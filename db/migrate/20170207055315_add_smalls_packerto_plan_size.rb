class AddSmallsPackertoPlanSize < ActiveRecord::Migration[5.0]
  def change
    add_column :plan_sizes, :smalls_packer, :integer
  end
end
