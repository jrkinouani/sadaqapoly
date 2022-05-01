require 'rails_helper'

RSpec.describe "masjids/index", type: :view do
  before(:each) do
    assign(:masjids, [
      Masjid.create!(
        name: "Name"
      ),
      Masjid.create!(
        name: "Name"
      )
    ])
  end

  it "renders a list of masjids" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
  end
end
