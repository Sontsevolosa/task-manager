require 'rails_helper'

RSpec.describe "UsersIndices", type: :request do
  describe "GET /users_path" do
    it "request for user index page works!" do
      get users_path
      expect(response).to have_http_status(302)
    end
  end
end
