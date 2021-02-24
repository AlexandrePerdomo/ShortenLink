# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.1.1'
# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1.4'
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
# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false
# Graph for Ruby
gem 'gruff'

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'rubocop'
  gem 'rubocop-rails'
  gem 'web-console', '>= 4.1.0'

  gem 'listen', '~> 3.3'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'spring'
  # Call 'binding.pry' in the code to use pry debugger
  gem 'pry-byebug'
  gem 'pry-rails'
  # Handle N+1 queries
  gem 'annotate'
  gem 'bullet'
end
