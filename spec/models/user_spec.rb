require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

it 'should have matching email' do
  user = User.new
  user.email = ENV.fetch('USER_EMAIL')
  expect(user.email).to eq('name@example.com')
end