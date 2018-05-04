require 'rails_helper'

RSpec.describe "drinks/show", type: :view do
  before(:each) do
    @drink = assign(:drink, Drink.create!(
      :user => nil,
      :amount_in_ml => "Amount In Ml",
      :number_of_bottles_available => "Number Of Bottles Available",
      :beer_type => "MyText",
      :main_ingredient => "MyText",
      :postcode => "Postcode",
      :post => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Amount In Ml/)
    expect(rendered).to match(/Number Of Bottles Available/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Postcode/)
    expect(rendered).to match(//)
  end
end
