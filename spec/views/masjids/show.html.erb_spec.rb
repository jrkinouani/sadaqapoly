require 'rails_helper'

RSpec.describe "masjids/show", type: :view do
  before(:each) do
    @masjid = assign(:masjid, Masjid.create!(
      name: "Name",
      city: "City",
      desc: "MyText",
      funding_goal: 2,
      amount_pledged: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
