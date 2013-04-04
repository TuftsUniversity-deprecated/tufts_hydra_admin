source 'http://rubygems.org'

  gem 'rails', '3.2.13'

  gem 'blacklight'
  gem 'hydra-head', '~> 6.0.0'

# We will assume that you're using sqlite3 for testing/demo,
# but in a production setup you probably want to use a real sql database like mysql or postgres
  gem 'sqlite3'
  
# Rails uses asset pipeline.  You will need these gems for used your assets in development.
# However, you won't need them in production because they will be precompiled.
  group :assets do
    gem 'sass-rails', '~> 3.2.3'
    gem 'jquery-rails'
  end

# You will probably want to use these to run the tests you write for your hydra head
# For testing with rspec
  group :development, :test do
    gem 'rspec-rails'
    gem 'jettywrapper'
  end
# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug'

gem "unicode", :platforms => [:mri_18, :mri_19]
gem "devise"
gem "devise-guests", "~> 0.3"
gem "bootstrap-sass"