json.extract! drink, :id, :user_id, :amount_in_ml, :number_of_bottles_available, :beer_type, :main_ingredient, :postcode, :post_id, :created_at, :updated_at
json.url drink_url(drink, format: :json)
