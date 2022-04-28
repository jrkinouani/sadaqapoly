require 'rails_helper'

RSpec.describe "masjids/index", type: :view do
  before(:each) do
    assign(:masjids, [
      Masjid.create!(
        name: "Name",
        city: "City",
        desc: "MyText",
        funding_goal: 2,
        amount_pledged: 3
      ),
      Masjid.create!(
        name: "Name",
        city: "City",
        desc: "MyText",
        funding_goal: 2,
        amount_pledged: 3
      )
    ])
  end

  it "renders a list of masjids" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "City".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
  end
end
