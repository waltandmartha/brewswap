class Payment < ApplicationRecord
  belongs_to :membership
  belongs_to :user
end
