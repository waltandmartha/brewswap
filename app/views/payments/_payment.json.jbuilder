json.extract! payment, :id, :amount, :membership_id, :user_id, :created_at, :updated_at
json.url payment_url(payment, format: :json)
