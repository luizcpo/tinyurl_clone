json.extract! short_link, :id, :url, :token, :statistics_id, :created_at, :updated_at
json.url short_link_url(short_link, format: :json)
