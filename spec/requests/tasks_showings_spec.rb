require 'rails_helper'

RSpec.describe "TasksShowings", type: :request do
  describe "GET /tasks_path" do
    it "request for tasks index page works!" do
      get tasks_path
      expect(response).to have_http_status(200)
    end
  end
end
