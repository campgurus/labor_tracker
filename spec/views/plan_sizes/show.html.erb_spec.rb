require 'rails_helper'

RSpec.describe "plan_sizes/show", type: :view do
  before(:each) do
    @plan_size = assign(:plan_size, PlanSize.create!(
      :packer => 2,
      :slam_operator => 3,
      :water_spider => 4,
      :shortstop => 5,
      :problem_solver => 6,
      :tote_replenishment => 7,
      :process_guide => 8,
      :process_assistant => 9
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(/8/)
    expect(rendered).to match(/9/)
  end
end
