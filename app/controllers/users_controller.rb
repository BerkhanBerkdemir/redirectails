class UsersController < ApplicationController
  before_action :authorize

  def edit;
    @user = User.find_by username: params[:username]
  end
  
  def update
    user = User.find_by username: params[:username]
    if user.update(params.require(:user).permit(:username, :email))
      redirect_to root_path
    else
      render 'users/edit'
    end
  end
end
