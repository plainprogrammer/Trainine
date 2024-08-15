source "https://rubygems.org"

gem "rails", "~> 7.2.0"
gem "puma", ">= 5.0"
gem "sqlite3", ">= 1.4"

gem "sprockets-rails"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "tailwindcss-rails"
gem "jbuilder"

gem "tzinfo-data", platforms: %i[ windows jruby ]
gem "bootsnap", require: false

group :development, :test do
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"
  gem "brakeman", require: false
  gem "rubocop-rails-omakase", require: false

  gem "rspec-rails", "~> 6.1"
  gem "rspec-its", require: false
  gem "shoulda-matchers", "~> 6.0"
end

group :development do
  gem "web-console"
end
