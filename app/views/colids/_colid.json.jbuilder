json.extract! colid, :id, :name, :phone, :email, :staff, :location, :created_at, :updated_at
json.url colid_url(colid, format: :json)
