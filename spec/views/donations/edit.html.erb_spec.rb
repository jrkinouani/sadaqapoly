require 'rails_helper'

RSpec.describe "donations/edit", type: :view do
  before(:each) do
    @donation = assign(:donation, Donation.create!(
      price: 1.5,
      pack: nil
    ))
  end

  it "renders the edit donation form" do
    render

    assert_select "form[action=?][method=?]", donation_path(@donation), "post" do

      assert_select "input[name=?]", "donation[price]"

      assert_select "input[name=?]", "donation[pack_id]"
    end
  end
end
