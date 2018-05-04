json.extract! profile, :id, :username, :bio, :location, :image_data, :latitude, :longitude, :street_address, :city, :postcode, :state, :country_code, :user_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)
