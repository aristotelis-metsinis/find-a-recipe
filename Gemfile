source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '>=7.0.3'
# Use sqlite3 as the database for Active Record
gem 'sqlite3', group: :development
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '>= 2.11.5'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
#
gem 'therubyracer', platforms: :ruby
#
gem 'capybara', '~> 2.4.4'
#
gem 'poltergeist', '~> 1.6.0'
#
gem 'phantomjs', '~> 1.9.8.0'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  gem 'spring'
end

group :production do
  gem 'pg'
  
  gem 'rails_12factor'
end

gem 'httparty', '0.13.5'

# You may encounter a TZInfo::DataSourceNotFound exception with the message No source of timezone data could be found 
# when you use TZInfo or other libraries that depend on it (for example, Active Support and Ruby on Rails). The error 
# indicates that TZInfo was unable to find a source of time zone data on your system. This will typically occur if you 
# are using Windows. The simplest way to resolve this error is to install the tzinfo-data gem.
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw]
