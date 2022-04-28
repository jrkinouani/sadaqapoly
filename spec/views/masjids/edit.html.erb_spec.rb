require 'rails_helper'

RSpec.describe "masjids/edit", type: :view do
  before(:each) do
    @masjid = assign(:masjid, Masjid.create!(
      name: "MyString",
      city: "MyString",
      desc: "MyText",
      funding_goal: 1,
      amount_pledged: 1
    ))
  end

  it "renders the edit masjid form" do
    render

    assert_select "form[action=?][method=?]", masjid_path(@masjid), "post" do

      assert_select "input[name=?]", "masjid[name]"

      assert_select "input[name=?]", "masjid[city]"

      assert_select "textarea[name=?]", "masjid[desc]"

      assert_select "input[name=?]", "masjid[funding_goal]"

      assert_select "input[name=?]", "masjid[amount_pledged]"
    end
  end
end
