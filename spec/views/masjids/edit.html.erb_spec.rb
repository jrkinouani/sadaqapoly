require 'rails_helper'

RSpec.describe "masjids/edit", type: :view do
  before(:each) do
    @masjid = assign(:masjid, Masjid.create!(
      name: "MyString"
    ))
  end

  it "renders the edit masjid form" do
    render

    assert_select "form[action=?][method=?]", masjid_path(@masjid), "post" do

      assert_select "input[name=?]", "masjid[name]"
    end
  end
end
