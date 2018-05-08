class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable #omniauth_providers: [:google]
  has_one :profile
  has_many :posts
  # has_and_belongs_to_many :messages 
  # has_one :membership
  # has_many :reviews
  # has_many :followers
    # has_many :credit_cards, dependent: :destroy
   
    # after_commit :assign_customer_id, on: :create
   
    # def assign_customer_id
    #   customer = Stripe::Customer.create(email: email)
    #   self.customer_id = customer.id
    # end
end
