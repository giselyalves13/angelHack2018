json.extract! user, :id, :email, :senha, :nome, :genero, :created_at, :updated_at
json.url user_url(user, format: :json)
