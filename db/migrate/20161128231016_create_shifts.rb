class CreateShifts < ActiveRecord::Migration[5.0]
  def change
    create_table :shifts do |t|
      t.integer :role_id
      t.integer :associate_id

      t.timestamps
    end
  end
end
