json.array!(@clapme_stages) do |clapme_stage|
  json.extract! clapme_stage, :id, :name, :description, :slug, :has_partner
  json.url clapme_stage_url(clapme_stage, format: :json)
end
