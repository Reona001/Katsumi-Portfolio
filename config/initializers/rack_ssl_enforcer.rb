# config/initializers/rack_ssl_enforcer.rb

if Rails.env.production?
  Rails.application.config.middleware.insert_before ActionDispatch::SSL, Rack::SslEnforcer
end
