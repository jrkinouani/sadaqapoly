require 'rails_helper'

RSpec.describe "donations/new", type: :view do
  before(:each) do
    assign(:donation, Donation.new(
      price: 1.5,
      pack: nil
    ))
  end

  it "renders new donation form" do
    render

    assert_select "form[action=?][method=?]", donations_path, "post" do

      assert_select "input[name=?]", "donation[price]"

      assert_select "input[name=?]", "donation[pack_id]"
    end
  end
end
