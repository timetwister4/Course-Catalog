module SearchHelper

  def search_for keyword = nil, subject = nil
      if subject && keyword
      Course.joins(:course_subjects).where("name LIKE ? and course_subjects.subject_id = ?", keyword, subject)
    elsif subject
      Course.joins(:course_subjects).where("course_subjects.subject_id = ?", subject)
    elsif keyword
      Course.where("name LIKE ?", "%#{keyword}%")
    end
  end

end
