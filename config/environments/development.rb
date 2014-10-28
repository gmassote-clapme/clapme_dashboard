Rails.application.configure do

  config.cache_classes = false
  config.eager_load = false
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false
  config.action_mailer.raise_delivery_errors = false
  config.active_support.deprecation = :log
  config.active_record.migration_error = :page_load
  config.assets.debug = true
  config.assets.raise_runtime_errors = true

  # CLAPME ENV CONFIG
  ENV['WEBSITE_HOST'] = "http://localhost:3000"
  ENV['CDN_HOST'] = "http://localhost:3000/assets/"

  # PaperClip
  Paperclip.options[:command_path] = "/usr/local/bin/"
  Paperclip.options[:content_type_mappings] = { jpeg: 'image/jpeg', jpg: 'image/jpg', jpg: 'image/jpeg', pem: 'text/plain' }

end