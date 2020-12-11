class SessionsController < ApplicationController

  def login
  end

  def success
  end

  def create_from_github
    @user = User.find_or_create_by(uid: auth.uid) do |u|
      u.username = auth.extra.raw_info.login
      u.password = SecureRandom.hex(12)
    end

    if @user.valid?
      session[:user_id] = @user.id
      redirect_to "/success"
    end
  end

  private

  def auth
    request.env['omniauth.auth']
  end

end
