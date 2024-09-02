source "https://rubygems.org"

gem "rails", "~> 7.2.1"
gem "bootsnap", require: false
gem "sprockets-rails"   # [https://github.com/rails/sprockets-rails]
gem "sqlite3", ">= 1.4"
gem "puma", ">= 5.0"      # [https://github.com/puma/puma]
gem "importmap-rails"     # [https://github.com/rails/importmap-rails]
gem "turbo-rails"         # [https://turbo.hotwired.dev]
gem "stimulus-rails"      # [https://stimulus.hotwired.dev]
gem "tailwindcss-rails"   # [https://github.com/rails/tailwindcss-rails]
gem "jbuilder"            # [https://github.com/rails/jbuilder]
# gem "redis", ">= 4.0.1"
# gem "kredis"              # [https://github.com/rails/kredis]
# gem "bcrypt", "~> 3.1.7"  # [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "image_processing", "~> 1.2"  # [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]

gem "tzinfo-data", platforms: %i[ windows jruby ]

group :development, :test do
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"
  gem "brakeman", require: false  # [https://brakemanscanner.org/]
  gem "rubocop-rails-omakase", require: false # [https://github.com/rails/rubocop-rails-omakase/]
  gem "rspec-rails", "~> 7.0"
end

group :development do
  gem "web-console" # [https://github.com/rails/web-console]
end

group :test do
  gem "rspec-its"
  gem "shoulda-matchers", "~> 6.4"
end
