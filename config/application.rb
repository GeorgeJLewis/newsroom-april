require_relative 'boot'

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "action_cable/engine"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

Bundler.require(*Rails.groups)

module NewsroomApril
  class Application < Rails::Application

    config.load_defaults 5.2
    config.generators do |generate|
      generate.helper false
      generate.assets false
      generate.view_specs false
      generate.helper_specs false
      generate.routing_specs false
      generate.controller_specs false
      generate.system_tests false
    end

    config.stripe.secret_key = sk_test_QK74QgtJV712dOkePnAST9Z3
    config.stripe.publishable_key = pk_test_sumM2XGii4J2bHkbegO3p2Vg
    config.stripe.endpoint = '/payment/stripe-integration'

    config.generators.system_tests = nil

    config.i18n.available_locales = [:sv, :en]
    config.i18n.default_locale = :en
  end
end
