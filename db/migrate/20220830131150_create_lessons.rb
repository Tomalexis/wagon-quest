class CreateLessons < ActiveRecord::Migration[7.0]
  def change
    create_table :lessons do |t|
      t.string :name
      t.integer :hp_user
      t.integer :hp_teacher

      t.timestamps
    end
  end
end
