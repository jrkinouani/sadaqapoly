require 'rails_helper'

RSpec.describe "packs/edit", type: :view do
  before(:each) do
    @pack = assign(:pack, Pack.create!(
      name: "MyString",
      masjid_id: 1,
      price: 1
    ))
  end

  it "renders the edit pack form" do
    render

    assert_select "form[action=?][method=?]", pack_path(@pack), "post" do

      assert_select "input[name=?]", "pack[name]"

      assert_select "input[name=?]", "pack[masjid_id]"

      assert_select "input[name=?]", "pack[price]"
    end
  end
end
