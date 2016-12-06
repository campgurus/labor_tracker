require 'rails_helper'

RSpec.describe "shift_actuals/show", type: :view do
  before(:each) do
    @shift_actual = assign(:shift_actual, ShiftActual.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
