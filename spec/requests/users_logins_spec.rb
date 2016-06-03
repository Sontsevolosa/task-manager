require 'rails_helper'

RSpec.describe "UsersLogins", type: :request do
  describe "GET /login_path" do
    it "request for user log in works!" do
      get login_path
      expect(response).to have_http_status(200)
    end
  end
end
