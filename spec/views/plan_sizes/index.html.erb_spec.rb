require 'rails_helper'

RSpec.describe "plan_sizes/index", type: :view do
  before(:each) do
    assign(:plan_sizes, [
      PlanSize.create!(
        :packer => 2,
        :slam_operator => 3,
        :water_spider => 4,
        :shortstop => 5,
        :problem_solver => 6,
        :tote_replenishment => 7,
        :process_guide => 8,
        :process_assistant => 9
      ),
      PlanSize.create!(
        :packer => 2,
        :slam_operator => 3,
        :water_spider => 4,
        :shortstop => 5,
        :problem_solver => 6,
        :tote_replenishment => 7,
        :process_guide => 8,
        :process_assistant => 9
      )
    ])
  end

  it "renders a list of plan_sizes" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => 8.to_s, :count => 2
    assert_select "tr>td", :text => 9.to_s, :count => 2
  end
end
