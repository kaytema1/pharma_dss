json.extract! response, :id, :response, :comment, :created_at, :updated_at
json.url response_url(response, format: :json)
