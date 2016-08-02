json.extract! visiter, :id, :name, :mob, :address, :message, :email, :created_at, :updated_at
json.url visiter_url(visiter, format: :json)