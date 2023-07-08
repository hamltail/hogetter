source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.1'
gem 'bootsnap', require: false
gem 'cssbundling-rails'
gem 'devise'
gem 'haml-rails'
gem 'jbuilder'
gem 'jsbundling-rails'
gem 'puma'
gem 'rails', '~> 7.0.4'
gem 'sass-rails'
gem 'simple_form'
gem 'sprockets-rails'
gem 'sqlite3'
gem 'stimulus-rails'
gem 'turbo-rails'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem 'sgcop', github: 'SonicGarden/sgcop'
  gem 'web-console'
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

group :production do
  gem 'unicorn'
end
