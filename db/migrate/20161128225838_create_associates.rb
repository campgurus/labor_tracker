class CreateAssociates < ActiveRecord::Migration[5.0]
  def change
    create_table :associates do |t|
      t.string :first_name
      t.string :last_name
      t.string :login
      t.string :employee_id

      t.timestamps
    end
  end
end
