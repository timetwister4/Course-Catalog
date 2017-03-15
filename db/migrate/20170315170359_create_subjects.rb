class CreateSubjects < ActiveRecord::Migration[5.0]
  def change
    create_table :subjects do |t|
      t.string :name
      t.integer :subject_id
      t.string :abbreviation
      t.string :term

      t.timestamps
    end
  end
end
