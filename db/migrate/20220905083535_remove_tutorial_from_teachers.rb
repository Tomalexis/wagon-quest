class RemoveTutorialFromTeachers < ActiveRecord::Migration[7.0]
  def change
    remove_column :teachers, :tutorial, :boolean
  end
end
