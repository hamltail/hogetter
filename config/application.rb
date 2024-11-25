require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module Microblog
  class Application < Rails::Application
    config.load_defaults 7.0
    config.time_zone = 'Asia/Tokyo'
    config.i18n.default_locale = :ja
    config.i18n.load_path += Dir[Rails.root.join('config/locales/**/*.yml').to_s]
  end
end
