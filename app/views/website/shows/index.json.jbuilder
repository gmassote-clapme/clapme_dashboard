json.array!(@clapme_shows) do |clapmerts_show|
  json.extract! clapmerts_show, :id, :name, :scheduled_start_at, :scheduled_finish_at, :started_at, :finished_at, :duration_mm, :description, :payment_type, :payment_amount, :top_rewards, :video_teaser, :slug, :state
  json.url clapmerts_show_url(clapmerts_show, format: :json)
end
