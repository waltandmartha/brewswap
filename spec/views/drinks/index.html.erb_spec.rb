require 'rails_helper'

RSpec.describe "drinks/index", type: :view do
  before(:each) do
    assign(:drinks, [
      Drink.create!(
        :user => nil,
        :amount_in_ml => "Amount In Ml",
        :number_of_bottles_available => "Number Of Bottles Available",
        :beer_type => "MyText",
        :main_ingredient => "MyText",
        :postcode => "Postcode",
        :post => nil
      ),
      Drink.create!(
        :user => nil,
        :amount_in_ml => "Amount In Ml",
        :number_of_bottles_available => "Number Of Bottles Available",
        :beer_type => "MyText",
        :main_ingredient => "MyText",
        :postcode => "Postcode",
        :post => nil
      )
    ])
  end

  it "renders a list of drinks" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Amount In Ml".to_s, :count => 2
    assert_select "tr>td", :text => "Number Of Bottles Available".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Postcode".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
