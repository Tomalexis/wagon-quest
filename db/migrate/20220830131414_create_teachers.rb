class CreateTeachers < ActiveRecord::Migration[7.0]
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :feedback_answer_weird
      t.string :feedback_answer_misleading
      t.string :feedback_answer_correct
      t.string :feedback_answer_perfect
      t.string :feedback_intro
      t.string :feedback_user_won
      t.string :feedback_user_lost
      t.integer :position_x
      t.integer :position_y
      t.references :lesson, null: false, foreign_key: true

      t.timestamps
    end
  end
end
