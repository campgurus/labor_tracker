require 'rails_helper'

RSpec.describe "shift_actuals/index", type: :view do
  before(:each) do
    assign(:shift_actuals, [
      ShiftActual.create!(
        :name => "Name"
      ),
      ShiftActual.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of shift_actuals" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
