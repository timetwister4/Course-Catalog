module EnrollmentsHelper

  def enrolled?(user, course)

    return Enrollment.where(user: user, course: course).exists?

  end

end
