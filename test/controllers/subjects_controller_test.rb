require 'test_helper'

class SubjectsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get subjects_url
    assert_response :success
  end

end
