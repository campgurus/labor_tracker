require 'rails_helper'

RSpec.describe "shift_actuals/edit", type: :view do
  before(:each) do
    @shift_actual = assign(:shift_actual, ShiftActual.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit shift_actual form" do
    render

    assert_select "form[action=?][method=?]", shift_actual_path(@shift_actual), "post" do

      assert_select "input#shift_actual_name[name=?]", "shift_actual[name]"
    end
  end
end
