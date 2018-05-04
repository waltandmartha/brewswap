require 'rails_helper'

RSpec.describe "profiles/index", type: :view do
  before(:each) do
    assign(:profiles, [
      Profile.create!(
        :username => "MyText",
        :bio => "MyText",
        :location => "MyText",
        :image_data => "MyText",
        :latitude => "9.99",
        :longitude => "9.99",
        :street_address => "Street Address",
        :city => "City",
        :postcode => "Postcode",
        :state => "State",
        :country_code => "Country Code",
        :user => nil
      ),
      Profile.create!(
        :username => "MyText",
        :bio => "MyText",
        :location => "MyText",
        :image_data => "MyText",
        :latitude => "9.99",
        :longitude => "9.99",
        :street_address => "Street Address",
        :city => "City",
        :postcode => "Postcode",
        :state => "State",
        :country_code => "Country Code",
        :user => nil
      )
    ])
  end

  it "renders a list of profiles" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Street Address".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "Postcode".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Country Code".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
