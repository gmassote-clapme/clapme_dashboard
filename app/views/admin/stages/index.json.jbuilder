json.array!(@admin_stages) do |admin_stage|
  json.extract! admin_stage, :id, :name, :slug, :description, :has_partner
  json.url admin_stage_url(admin_stage, format: :json)
end
