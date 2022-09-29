class AddDefeatedToTeachers < ActiveRecord::Migration[7.0]
  def change
    add_column :teachers, :defeated, :boolean
  end
end
