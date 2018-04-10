class SessionsController < ApplicationController
  before_action :logged_in?, only: [:destroy]

  def new
    # TODO: This is not good way to use.
    #   We need to add something there..
    if logged_in?
      redirect_to root_path
    else
      render 'sessions/new'
    end
  end

  def create
    user = User.find_by_username(params[:username])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:success] = 'Successfully you logged in to your account'
      redirect_to root_path
    else
      flash[:danger] = 'Invalid email/password combination'
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = 'Successfully you logged out. Thank you.'
    redirect_to root_path
  end
end
