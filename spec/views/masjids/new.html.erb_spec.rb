require 'rails_helper'

RSpec.describe "masjids/new", type: :view do
  before(:each) do
    assign(:masjid, Masjid.new(
      name: "MyString"
    ))
  end

  it "renders new masjid form" do
    render

    assert_select "form[action=?][method=?]", masjids_path, "post" do

      assert_select "input[name=?]", "masjid[name]"
    end
  end
end
