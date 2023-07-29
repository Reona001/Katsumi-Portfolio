source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }


# Bootstrap
# gem 'bootstrap', '~> 5.1.3'

# Redirecting
gem 'rack-rewrite'



# active record management
gem 'activerecord-reset-pk-sequence'

#redis gems
gem 'redis'
gem 'redis-namespace'
gem 'redis-rails'
# config:  https://hixonrails.com/ruby-on-rails-tutorials/ruby-on-rails-redis-installation-and-configuration/
# tutorial: https://slacker.ro/2019/04/04/creating-a-chat-application-from-scratch-using-rails-and-websockets/
ruby '2.7.4'
# slacker messenger
gem 'jquery-rails'

#image hosting
gem 'dotenv-rails', groups: [:development, :test]
gem 'cloudinary', '~> 1.16.0'

# helpers
# autoprefixer is a helper for JS
gem 'autoprefixer-rails', '10.2.5'
gem 'font-awesome-sass', '~> 5.6.1'
gem 'simple_form'

# Authentication and Authorization
gem 'devise'
gem 'pundit'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 6.1.4', '>= 6.1.4.4'
# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1'

# gem 'sqlite3'
# group :development, :test do
#   gem 'sqlite3'
# end

# group :production do
#   gem 'pg', '~> 0.18'
# end


# Use Puma as the app server
gem 'puma', '~> 5.0'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 5.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 4.1.0'
  # Display performance information such as SQL time and flame graphs for each request in your browser.
  # Can be configured to work on production as well see: https://github.com/MiniProfiler/rack-mini-profiler/blob/master/README.md
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'listen', '~> 3.3'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
