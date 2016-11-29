class CreatePlannedRoles < ActiveRecord::Migration[5.0]
  def change
    create_table :planned_roles do |t|
      t.integer :associate_id
      t.integer :role_id

      t.timestamps
    end
  end
end
