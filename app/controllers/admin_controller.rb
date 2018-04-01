class AdminController < ApplicationController
  http_basic_authenticate_with name: 'admin', password: 'lorem'

  # Get all URL from database
  def dashboard
    @url = Url.all
  end
  
  # Delete query from database with :delete method
  def destroy

    url = Url.find(params[:id])

    # If it is successful return a success message with flash
    # If not return error message. Sysadmin should check error.
    if url.destroy
      flash[:success] = "Successfully deleted..."
      redirect_to admin_path
    else
      flash[:danger] = "Something went wrong. Please check your logs"
      redirect_to admin_path
    end
  end
end
