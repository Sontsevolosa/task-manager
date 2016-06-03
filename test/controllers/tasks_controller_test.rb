require 'test_helper'

class TasksControllerTest < ActionController::TestCase
  test "should get title" do
  	get :index
  	assert_select "title", "Just Do It!"
  end
end
