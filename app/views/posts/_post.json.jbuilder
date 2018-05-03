json.extract! post, :id, :title, :description, :image_data, :user_id, :profile_id, :created_at, :updated_at
json.url post_url(post, format: :json)
