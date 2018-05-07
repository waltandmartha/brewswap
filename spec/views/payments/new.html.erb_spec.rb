require 'rails_helper'

RSpec.describe "payments/new", type: :view do
  before(:each) do
    assign(:payment, Payment.new(
      :amount => "9.99",
      :membership => nil,
      :user => nil
    ))
  end

  it "renders new payment form" do
    render

    assert_select "form[action=?][method=?]", payments_path, "post" do

      assert_select "input[name=?]", "payment[amount]"

      assert_select "input[name=?]", "payment[membership_id]"

      assert_select "input[name=?]", "payment[user_id]"
    end
  end
end
