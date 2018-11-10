json.extract! table_user, :id, :name, :email, :documento, :direccion, :ocupacion, :created_at, :updated_at
json.url table_user_url(table_user, format: :json)
