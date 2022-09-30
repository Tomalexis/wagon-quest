class RemoveDefeatedFromTeachers < ActiveRecord::Migration[7.0]
  def change
    remove_column :teachers, :defeated, :boolean
  end
end
