json.array!(@admin_shows) do |admin_show|
  json.extract! admin_show, :id, :name, :slug, :scheduled_start_at, :scheduled_finish_at, :duration_mm, :description, :payment_amount, :video_teaser, :url_stream, :url_stream_vip, :state
  json.url admin_show_url(admin_show, format: :json)
end
