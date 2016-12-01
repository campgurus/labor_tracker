class CreateShiftPlans < ActiveRecord::Migration[5.0]
  def change
    create_table :shift_plans do |t|
      t.string :name

      t.timestamps
    end
  end
end
