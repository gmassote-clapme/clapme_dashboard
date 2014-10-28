Rails.application.configure do

  config.cache_classes = true
  config.eager_load = true
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true
  config.serve_static_assets = false
  config.assets.css_compressor = :yui
  config.assets.js_compressor = :uglifier
  config.assets.compile = false
  config.assets.digest = true
  config.assets.version = '1.0'
  config.log_level = :info
  config.i18n.fallbacks = true
  config.active_support.deprecation = :notify
  config.log_formatter = ::Logger::Formatter.new
  config.active_record.dump_schema_after_migration = false

  # CLAPME ENV CONFIG
  ENV['WEBSITE_HOST'] = "http://clapme.com"
  ENV['CDN_HOST'] = "http://clapme.com/assets/"

  # PaperClip
  Paperclip.options[:command_path] = "/usr/local/bin/"
  Paperclip.options[:content_type_mappings] = { jpeg: 'image/jpeg', jpg: 'image/jpg', jpg: 'image/jpeg', pem: 'text/plain' }
  config.paperclip_defaults = {
      :storage => :s3,
      :s3_credentials => {
          bucket: 'uploads.clapme.com',
          access_key_id: ENV['AWS_S3_ACCESS_KEY_ID'],
          secret_access_key: ENV['AWS_S3_SECRET_ACCESS_KEY']
      }
  }

  # QuietAssets
  # config.quiet_assets = true

end