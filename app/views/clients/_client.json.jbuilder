json.extract! client, :id, :title, :body, :project_id, :created_at, :updated_at
json.url client_url(client, format: :json)
