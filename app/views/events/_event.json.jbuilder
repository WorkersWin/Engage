json.extract! event, :id, :name, :start_datetime, :end_datetime, :description, :event_type_id, :created_at, :updated_at
json.url event_url(event, format: :json)
