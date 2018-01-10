json.extract! comment, :id, :email, :name, :body, :created_at, :updated_at
json.url comment_url(comment, format: :json)
