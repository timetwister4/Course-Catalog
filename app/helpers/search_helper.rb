module SearchHelper

  def search_for keyword, subject
    CourseSubject.joins(:course).where(courses: {"name LIKE ?", keyword}, subject_id: subject)
  end



end
