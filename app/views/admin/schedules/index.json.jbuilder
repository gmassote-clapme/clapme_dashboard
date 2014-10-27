json.array!(@admin_schedules) do |admin_schedule|
  json.extract! admin_schedule, :id, :name, :concurrent_events_enable
  json.url admin_schedule_url(admin_schedule, format: :json)
end
