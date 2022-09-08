class AddOpenDialoguesToTeacher < ActiveRecord::Migration[7.0]
  def change
    add_column :teachers, :open_dialog1, :string
    add_column :teachers, :open_dialog2, :string
    add_column :teachers, :open_dialog3, :string
  end
end
