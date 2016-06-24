source 'https://rubygems.org'
ruby '2.2.0'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.0'

# gem 'rails_12factor', group: :production

# Use postgre for production
gem 'pg'
gem 'rgeo'
gem 'rgeo-geojson'
gem 'activerecord-postgis-adapter', '3.0.0.beta5'
gem 'geocoder'
# Use sqlite3 as the database for Active Record
gem 'sqlite3', group: :development

# Use SCSS for stylesheets
gem 'bootstrap-sass', '~> 3.2.0'
gem 'sass-rails', '~> 4.0.3'
gem 'haml-rails'
gem 'autoprefixer-rails'
gem 'jquery-turbolinks'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
gem 'paper_trail', '3.0.7'
gem 'loofah', '2.0.1'
gem 'loofah-activerecord', '1.2.0'
gem 'formtastic', '2.2.1'
gem 'htmlentities', '4.3.1'
gem 'ri_cal', '0.8.8'
gem 'rest-client', '1.6.7'
gem 'mofo', path: 'vendor/gems/mofo-0.2.8' # vendored fork with hpricot dependency replaced with nokogiri
gem 'acts-as-taggable-on', '2.4.1'
gem 'geokit', '1.6.5'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: [ :ruby, :mingw, :x64_mingw, :mswin ]
# gem 'therubyrhino',  platforms: :jruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'jquery-ui-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Users and sessions
gem 'devise'
gem 'omniauth'
gem 'omniauth-facebook'
gem 'unicorn'
gem 'decent_exposure'

# Date and datetime picker
gem 'bootstrap-datepicker-rails'
gem 'momentjs-rails', '>= 2.8.1'
gem 'bootstrap3-datetimepicker-rails', '~> 3.1.3'

gem 'paperclip', '~> 4.2'

gem 'aws-sdk', '~> 1.5.7'

# Pagination and infinite scrolling
gem 'kaminari'

# For test and development data
gem 'forgery', '0.6.0'

# Nokogiri XML and HTML parser
gem 'nokogiri'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
gem 'quiet_assets', group: :development
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [ :mingw, :mswin ]

# Sidekiq for process handling
gem 'sidekiq', '4.0.1'
gem 'sinatra', group: :development, :require => nil # sinatra is used for displaying sidekiq instances

# Redis for sidekiq data storing
gem 'redis'

# Unicorn web server
# gem 'unicorn'
group :development do
	gem 'capistrano', '~> 3.2.1'
	gem 'capistrano-bundler', '~> 1.1.2'
	gem 'capistrano-rails', '~> 1.1.1'
	gem 'capistrano-rbenv', '~> 2.0'
	gem 'capistrano-secrets-yml', '~> 1.0.0'
  	gem 'capistrano3-delayed-job', '~> 1.0'
end
# gem 'obfuscate_id', git: 'https://github.com/namick/obfuscate_id.git'

# using the hfwang version since it doesn't have the minimal.png bug.
gem 'adminlte-rails', :git => 'git://github.com/hfwang/adminlte-rails.git'

gem 'font-awesome-rails'

gem 'spring', group: :development

gem 'icalendar'
gem 'gaffe'