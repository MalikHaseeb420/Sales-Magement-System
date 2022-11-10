require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module SalesManagmentSystem
  class Application < Rails::Application
    config.load_defaults 5.2
    # Initialize configuration defaults for originally generated Rails version.
    config.i18n.default_locale = :en
    config.assets.initialize_on_precompile = false
    config.time_zone = 'Asia/Karachi'
    config.exceptions_app = routes
    config.active_storage.service = :cloudinary
    Cloudinary.config_from_url("cloudinary://#{Rails.application.credentials[Rails.env.to_sym][:cloudinary_creds][:api_key]}:#{Rails.application.credentials[Rails.env.to_sym][:cloudinary_creds][:api_secret]}@#{Rails.application.credentials[Rails.env.to_sym][:cloudinary_creds][:cloud_name]}")
    Cloudinary.config do |config|
      config.secure = true
    end
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
