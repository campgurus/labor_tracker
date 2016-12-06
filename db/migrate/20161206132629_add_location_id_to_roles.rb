class AddLocationIdToRoles < ActiveRecord::Migration[5.0]
  def change
    add_column :roles, :location_id, :integer
    add_column :shifts, :location_id, :integer
  end
end
