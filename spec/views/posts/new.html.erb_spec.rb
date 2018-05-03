require 'rails_helper'

RSpec.describe "posts/new", type: :view do
  before(:each) do
    assign(:post, Post.new(
      :title => "MyText",
      :description => "MyText",
      :image_data => "MyText",
      :user => nil,
      :profile => nil
    ))
  end

  it "renders new post form" do
    render

    assert_select "form[action=?][method=?]", posts_path, "post" do

      assert_select "textarea[name=?]", "post[title]"

      assert_select "textarea[name=?]", "post[description]"

      assert_select "textarea[name=?]", "post[image_data]"

      assert_select "input[name=?]", "post[user_id]"

      assert_select "input[name=?]", "post[profile_id]"
    end
  end
end
