# frozen_string_literal: true

require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module Flycat
  class Application < Rails::Application
    config.load_defaults 6.1
    config.exceptions_app = routes
    config.i18n.available_locales = %i[en zh-TW] # 支援語系
    config.i18n.default_locale = :'zh-TW' # 預設語系
    # config.hosts << 'd534-61-220-182-115.jp.ngrok.io'
    # 如要測金流請加入自己的ngrok
    config.hosts << 'dev.flycat.works'
    config.action_controller.forgery_protection_origin_check = false
    # 設定時區為臺北時間
    config.time_zone = 'Taipei'
    config.active_record.default_timezone = :local
    config.i18n.available_locales = %i[en zh-TW] # 支援語系
    config.i18n.default_locale = :'zh-TW' # 預設語系
  end
end
