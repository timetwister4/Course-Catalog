require 'test_helper'

class InstructorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get instructors_url
    assert_response :success
  end

end
