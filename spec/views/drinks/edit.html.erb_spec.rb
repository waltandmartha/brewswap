require 'rails_helper'

RSpec.describe "drinks/edit", type: :view do
  before(:each) do
    @drink = assign(:drink, Drink.create!(
      :user => nil,
      :amount_in_ml => "MyString",
      :number_of_bottles_available => "MyString",
      :beer_type => "MyText",
      :main_ingredient => "MyText",
      :postcode => "MyString",
      :post => nil
    ))
  end

  it "renders the edit drink form" do
    render

    assert_select "form[action=?][method=?]", drink_path(@drink), "post" do

      assert_select "input[name=?]", "drink[user_id]"

      assert_select "input[name=?]", "drink[amount_in_ml]"

      assert_select "input[name=?]", "drink[number_of_bottles_available]"

      assert_select "textarea[name=?]", "drink[beer_type]"

      assert_select "textarea[name=?]", "drink[main_ingredient]"

      assert_select "input[name=?]", "drink[postcode]"

      assert_select "input[name=?]", "drink[post_id]"
    end
  end
end
