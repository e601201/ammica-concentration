json.extract! user, :id, :name, :email, :avatar, :created_at, :updated_at
json.url user_url(user, format: :json)
json.avatar url_for(user.avatar)
