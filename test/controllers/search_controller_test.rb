require 'test_helper'

class SearchControllerTest < ActionDispatch::IntegrationTest

  def setup
    @subject = subjects(:one)
    @course = courses(:one)
    CourseSubject.create(subject_id: @subject.id, course_id: @course.id)
  end

  test "should get new" do
    get search_new_url
    assert_response :success
  end

  test "should get show when both keyword and subject are submitted" do
    get search_show_url, params:{ search: {subject_id: @subject.id, keyword: @course.name}}
    assert_response :success
  end

  test "should get show courses with just subject" do
    get search_show_url, params:{ search: {subject_id: @subject.id}}
    assert_response :success
  end



  test "should get show with just a keyword" do
    get search_show_url, params:{ search: {keyword: @course.name}}
    assert_response :success
  end


end
