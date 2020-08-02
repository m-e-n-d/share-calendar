json.extract! user, :id, :name, :password, :display_name, :created_at, :updated_at
json.url user_url(user, format: :json)
