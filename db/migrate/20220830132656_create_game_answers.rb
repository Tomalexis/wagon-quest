class CreateGameAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :game_answers do |t|
      t.references :game, null: false, foreign_key: true
      t.references :round, null: false, foreign_key: true
      t.references :answer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
