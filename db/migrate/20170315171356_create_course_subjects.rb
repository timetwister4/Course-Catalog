class CreateCourseSubjects < ActiveRecord::Migration[5.0]
  def change
    create_table :course_subjects do |t|
      t.integer :course_id
      t.string :subject_id
    end
  end
end
