class Course < ApplicationRecord
  has_many :course_subjects
  has_many :enrollments
end
