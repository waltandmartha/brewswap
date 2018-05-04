require 'rails_helper'

RSpec.describe "profiles/edit", type: :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
      :username => "MyText",
      :bio => "MyText",
      :location => "MyText",
      :image_data => "MyText",
      :latitude => "9.99",
      :longitude => "9.99",
      :street_address => "MyString",
      :city => "MyString",
      :postcode => "MyString",
      :state => "MyString",
      :country_code => "MyString",
      :user => nil
    ))
  end

  it "renders the edit profile form" do
    render

    assert_select "form[action=?][method=?]", profile_path(@profile), "post" do

      assert_select "textarea[name=?]", "profile[username]"

      assert_select "textarea[name=?]", "profile[bio]"

      assert_select "textarea[name=?]", "profile[location]"

      assert_select "textarea[name=?]", "profile[image_data]"

      assert_select "input[name=?]", "profile[latitude]"

      assert_select "input[name=?]", "profile[longitude]"

      assert_select "input[name=?]", "profile[street_address]"

      assert_select "input[name=?]", "profile[city]"

      assert_select "input[name=?]", "profile[postcode]"

      assert_select "input[name=?]", "profile[state]"

      assert_select "input[name=?]", "profile[country_code]"

      assert_select "input[name=?]", "profile[user_id]"
    end
  end
end
