json.array!(@clapme_venues) do |clapmerts_venue|
  json.extract! clapmerts_venue, :id, :name, :email, :description, :venue_type, :phone, :slug, :state, :confirmation_token
  json.url clapmerts_venue_url(clapmerts_venue, format: :json)
end
