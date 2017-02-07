class CreatePlanSizes < ActiveRecord::Migration[5.0]
  def change
    create_table :plan_sizes do |t|
      t.integer :packer
      t.integer :slam_operator
      t.integer :water_spider
      t.integer :shortstop
      t.integer :problem_solver
      t.integer :tote_replenishment
      t.integer :process_guide
      t.integer :process_assistant

      t.timestamps
    end
  end
end
