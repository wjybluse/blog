json.array!(@users) do |user|
  json.extract! user, :name, :email, :digest_password, :desc
  json.url user_url(user, format: :json)
end
