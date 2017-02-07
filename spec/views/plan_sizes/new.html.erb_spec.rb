require 'rails_helper'

RSpec.describe "plan_sizes/new", type: :view do
  before(:each) do
    assign(:plan_size, PlanSize.new(
      :packer => 1,
      :slam_operator => 1,
      :water_spider => 1,
      :shortstop => 1,
      :problem_solver => 1,
      :tote_replenishment => 1,
      :process_guide => 1,
      :process_assistant => 1
    ))
  end

  it "renders new plan_size form" do
    render

    assert_select "form[action=?][method=?]", plan_sizes_path, "post" do

      assert_select "input#plan_size_packer[name=?]", "plan_size[packer]"

      assert_select "input#plan_size_slam_operator[name=?]", "plan_size[slam_operator]"

      assert_select "input#plan_size_water_spider[name=?]", "plan_size[water_spider]"

      assert_select "input#plan_size_shortstop[name=?]", "plan_size[shortstop]"

      assert_select "input#plan_size_problem_solver[name=?]", "plan_size[problem_solver]"

      assert_select "input#plan_size_tote_replenishment[name=?]", "plan_size[tote_replenishment]"

      assert_select "input#plan_size_process_guide[name=?]", "plan_size[process_guide]"

      assert_select "input#plan_size_process_assistant[name=?]", "plan_size[process_assistant]"
    end
  end
end
