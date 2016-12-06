class AddLocationToPlannedRoles < ActiveRecord::Migration[5.0]
  def change
    remove_column :roles, :location_id
    add_column :planned_roles, :location_id, :integer
  end
end
