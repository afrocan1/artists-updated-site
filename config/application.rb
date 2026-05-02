require_relative "boot"
require "rails/all"
# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)
module RauversionRor
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0
    config.exceptions_app = routes
    config.hosts << "chaskiq.sa.ngrok.io"
    config.hosts << ENV["HOST"]
    config.hosts << ENV["APP_DOMAIN"]
    config.hosts << ENV["DOMAIN"]
    config.mission_control.jobs.http_basic_auth_enabled = false
    config.mission_control.jobs.base_controller_class = "Admin::JobsController"
    config.hosts << "www.example.com" if Rails.env.test?
    config.active_storage.track_variants = true
    config.autoload_paths << Rails.root.join('lib')
  end
end
