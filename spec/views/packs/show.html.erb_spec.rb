require 'rails_helper'

RSpec.describe "packs/show", type: :view do
  before(:each) do
    @pack = assign(:pack, Pack.create!(
      name: "Name",
      masjid_id: 2,
      price: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
