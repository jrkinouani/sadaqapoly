require 'rails_helper'

RSpec.describe "packs/new", type: :view do
  before(:each) do
    assign(:pack, Pack.new(
      name: "MyString",
      masjid_id: 1,
      price: 1
    ))
  end

  it "renders new pack form" do
    render

    assert_select "form[action=?][method=?]", packs_path, "post" do

      assert_select "input[name=?]", "pack[name]"

      assert_select "input[name=?]", "pack[masjid_id]"

      assert_select "input[name=?]", "pack[price]"
    end
  end
end
