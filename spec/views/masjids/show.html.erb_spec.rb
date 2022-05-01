require 'rails_helper'

RSpec.describe "masjids/show", type: :view do
  before(:each) do
    @masjid = assign(:masjid, Masjid.create!(
      name: "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
