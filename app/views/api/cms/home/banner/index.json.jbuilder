json.array!(@cms_home_banners) do |cms_home_banner|
  json.extract! cms_home_banner, :id, :name, :redirect_url, :visible_start_at, :visible_finish_at, :is_visible
  json.image [request.url.gsub(request.fullpath, ""), cms_home_banner.image.url(:original)].join('')
  json.url cms_home_banner_url(cms_home_banner, format: :json)
end
