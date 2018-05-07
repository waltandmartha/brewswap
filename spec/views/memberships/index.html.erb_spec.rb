require 'rails_helper'

RSpec.describe "memberships/index", type: :view do
  before(:each) do
    assign(:memberships, [
      Membership.create!(
        :user => nil
      ),
      Membership.create!(
        :user => nil
      )
    ])
  end

  it "renders a list of memberships" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
