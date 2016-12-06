require 'rails_helper'

RSpec.describe "shift_actuals/new", type: :view do
  before(:each) do
    assign(:shift_actual, ShiftActual.new(
      :name => "MyString"
    ))
  end

  it "renders new shift_actual form" do
    render

    assert_select "form[action=?][method=?]", shift_actuals_path, "post" do

      assert_select "input#shift_actual_name[name=?]", "shift_actual[name]"
    end
  end
end
