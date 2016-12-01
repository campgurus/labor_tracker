class AddShiftPlanIdToShift < ActiveRecord::Migration[5.0]
  def change
    add_column :shifts, :shift_plan_id, :integer
  end
end
