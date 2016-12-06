class AddShiftActualIdToShift < ActiveRecord::Migration[5.0]
  def change
    add_column :shifts, :shift_actual_id, :integer
  end
end
