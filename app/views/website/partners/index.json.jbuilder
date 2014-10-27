json.array!(@clapme_partners) do |clapmerts_partner|
  json.extract! clapmerts_partner, :id, :name, :email, :description
  json.url clapmerts_partner_url(clapmerts_partner, format: :json)
end
