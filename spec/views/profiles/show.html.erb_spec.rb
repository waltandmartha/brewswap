require 'rails_helper'

RSpec.describe "profiles/show", type: :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Street Address/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/Postcode/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Country Code/)
    expect(rendered).to match(//)
  end
end
