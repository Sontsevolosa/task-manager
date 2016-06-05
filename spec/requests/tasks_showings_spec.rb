require 'rails_helper'

RSpec.describe "TasksShowings", type: :request do
  describe "GET /index" do
    it "request for tasks index page works!" do
      get root_path
      expect(response).to have_http_status(200)
    end
  end
end
