require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(*Rails.groups)
require 'clapme' # Clapme engine

module ClapmeWebsite # CHANGE NAME
  class Application < Rails::Application

    config.time_zone = 'Brasilia'

    I18n.enforce_available_locales = false
    config.i18n.locale = [:'pt-BR', :en]
    config.i18n.default_locale = :'pt-BR'

    config.assets.precompile += %w(
      # assets to precompile in production
    )

    config.generators do |g|
      g.test_framework :rspec
    end
  end
end