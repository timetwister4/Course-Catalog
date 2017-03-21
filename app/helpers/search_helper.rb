module SearchHelper

  def search_for keyword, subject
    Course.joins(:course_subjects).where("name LIKE ? and course_subjects.subject_id = ?", keyword, subject)
  end

end
