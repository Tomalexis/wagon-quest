class AddBooleanToGames < ActiveRecord::Migration[7.0]
  def change
    add_column :games, :Slackbot_defeated, :boolean, default: false
    add_column :games, :Jérémy_defeated, :boolean, default: false
    add_column :games, :Sébastien_defeated, :boolean, default: false
    add_column :games, :Timothée_defeated, :boolean, default: false
    add_column :games, :Hugo_defeated, :boolean, default: false
    add_column :games, :Diane_defeated, :boolean, default: false
    add_column :games, :Paul_defeated, :boolean, default: false
    add_column :games, :Boris_defeated, :boolean, default: false
  end
end
