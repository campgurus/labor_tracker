class CreateShiftActuals < ActiveRecord::Migration[5.0]
  def change
    create_table :shift_actuals do |t|
      t.date :date
      t.string :name

      t.timestamps
    end
  end
end
