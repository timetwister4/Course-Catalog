class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :term
      t.string :name
      t.string :description
      t.string :code

      t.timestamps
    end
  end
end
