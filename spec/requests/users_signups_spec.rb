require 'rails_helper'

RSpec.describe "UsersSignups", type: :request do
  describe "GET /signup_path" do
    it "request for user sign up works!" do
      get signup_path
      expect(response).to have_http_status(200)
    end
  end
end
