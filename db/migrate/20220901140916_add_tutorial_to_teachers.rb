class AddTutorialToTeachers < ActiveRecord::Migration[7.0]
  def change
    add_column :teachers, :tutorial, :boolean, default: false
  end
end
