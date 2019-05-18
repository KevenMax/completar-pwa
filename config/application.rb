require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Completar
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    config.time_zone = 'Brasilia'
 	config.active_record.default_timezone = :local # Or :utc

 	config.i18n.default_locale = 'pt-BR'
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    config.assets.precompile += [ 'devise.css', 'pessoas.css', 'dashboards.scss', 'horas_complementares.scss']
    config.assets.precompile += [ 'devise.js', 'pessoas.js', 'dashboards.js', 'horas_complementares.js' ]
    config.assets.precompile += %w( .svg .eot .woff .ttf )
  end
end
