require 'rails_helper'

RSpec.describe "masjids/new", type: :view do
  before(:each) do
    assign(:masjid, Masjid.new(
      name: "MyString",
      city: "MyString",
      desc: "MyText",
      funding_goal: 1,
      amount_pledged: 1
    ))
  end

  it "renders new masjid form" do
    render

    assert_select "form[action=?][method=?]", masjids_path, "post" do

      assert_select "input[name=?]", "masjid[name]"

      assert_select "input[name=?]", "masjid[city]"

      assert_select "textarea[name=?]", "masjid[desc]"

      assert_select "input[name=?]", "masjid[funding_goal]"

      assert_select "input[name=?]", "masjid[amount_pledged]"
    end
  end
end
