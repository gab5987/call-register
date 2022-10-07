json.extract! new_call, :id, :date, :local, :name, :request, :created_at, :updated_at
json.url new_call_url(new_call, format: :json)
