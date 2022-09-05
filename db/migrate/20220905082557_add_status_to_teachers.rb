class AddStatusToTeachers < ActiveRecord::Migration[7.0]
  def change
    add_column :teachers, :status, :string
  end
end
