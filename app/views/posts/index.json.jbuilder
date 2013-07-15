json.array!(@posts) do |post|
  json.extract! post, :title, :author, :d_type, :body
  json.url post_url(post, format: :json)
end
