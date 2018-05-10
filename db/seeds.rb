

# plan = Stripe::Plan.create(
#   :amount => 1000,
#   :interval => 'year',
#   :name => 'Basic Plan',
#   :currency => 'aud',
#   :id => 'basic'
# )

# Plan.create(name: plan.name, stripe_id: plan.id, display_price: (plan.amount.to_f / 100))

# Stripe::Plan.create(
#   :amount => 4900,
#   :interval => 'year',
#   :name => 'Premium Plan',
#   :currency => 'aud',
#   :id => 'premium'
# )

# Plan.create(name: plan.name, stripe_id: plan.id, display_price: (plan.amount.to_f / 100))