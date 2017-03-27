module SearchHelper

  def search_for keyword = nil, subject = nil
    #byebug
      if subject && keyword && keyword != ""
      Course.joins(:course_subjects).where("name LIKE ? and course_subjects.subject_id LIKE ?", "%#{keyword}%", subject)
    elsif subject
      #byebug
      Course.joins(:course_subjects).where("course_subjects.subject_id LIKE ?", subject)
    elsif keyword
      Course.where("name LIKE ?", "%#{keyword}%")
    end
  end

end
