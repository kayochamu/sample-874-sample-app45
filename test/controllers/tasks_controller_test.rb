require 'test_helper'

class TasksControllerTest < ActionDispatch::IntegrationTest
  test "should get delete" do
    get tasks_delete_url
    assert_response :success
  end

end
