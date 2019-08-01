json.extract! user, :id, :name, :address, :password, :photo, :created_at, :updated_at
json.url user_url(user, format: :json)
