class Membership < ApplicationRecord
  belongs_to :user
#   validates :name,  presence: true, uniqueness: true
#   validates :price, presence: true, numericality: { greater_than: 0 }
 
#   def price_in_cents
#     (price * 100).to_i
#   end

# end

# class CreditCard < ActiveRecord::Base
#   belongs_to :user
 
#   before_validation :set_last_digits
 
#   attr_accessor :number, :cvc
 
#   validates :digits, presence: true
#   validates :month, presence: true, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 12 }
#   validates :year, presence: true, numericality: { greater_than_or_equal_to: DateTime.now.year }
 
#   def set_last_digits
#     if number
#       number.to_s.gsub!(/\s/,'')
#       self.digits ||= number.to_s.length <= 4 ? number : number.to_s.slice(-4..-1)
#     end
#   end
end