class AddShiftPlanIdToPlannedRole < ActiveRecord::Migration[5.0]
  def change
    add_column :planned_roles, :shift_plan_id, :integer
  end
end
