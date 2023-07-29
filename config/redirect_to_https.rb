if Rails.env.production?
  Rails.application.config.middleware.insert_before(Rack::Runtime, Rack::Rewrite) do
    r301 %r{.*}, 'https://www.katsumi-kasuya.com$&', :if => Proc.new { |rack_env|
      rack_env['HTTPS'] != 'on'
    }
  end
end
