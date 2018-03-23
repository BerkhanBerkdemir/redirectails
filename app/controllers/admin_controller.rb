class AdminController < ApplicationController
  http_basic_authenticate_with name: 'admin', password: 'lorem'

  def dashboard
    @url = Url.all
  end
end