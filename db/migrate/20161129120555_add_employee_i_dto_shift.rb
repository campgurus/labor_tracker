class AddEmployeeIDtoShift < ActiveRecord::Migration[5.0]
  def change
    add_column :shifts, :employee_id, :string
    add_column :planned_roles, :employee_id, :string
  end
end
