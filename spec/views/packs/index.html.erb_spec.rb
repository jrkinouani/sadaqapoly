require 'rails_helper'

RSpec.describe "packs/index", type: :view do
  before(:each) do
    assign(:packs, [
      Pack.create!(
        name: "Name",
        masjid_id: 2,
        price: 3
      ),
      Pack.create!(
        name: "Name",
        masjid_id: 2,
        price: 3
      )
    ])
  end

  it "renders a list of packs" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
  end
end
