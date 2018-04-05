require 'rails_helper'

def basic_auth
  credentials = ActionController::HttpAuthentication::Basic.encode_credentials ENV.fetch('NAME'), ENV.fetch('PASSWORD')
  request.env['HTTP_AUTHORIZATION'] = credentials
end

RSpec.describe AdminController, type: :controller do
  describe "GET dashboard aka index" do
    it "tries with username and password" do
      basic_auth
      get :dashboard
      expect(response).to render_template('admin/dashboard')
    end
  end
end
