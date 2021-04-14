json.extract! benutzer, :id, :email, :name, :rechte, :created_at, :updated_at
json.url benutzer_url(benutzer, format: :json)
