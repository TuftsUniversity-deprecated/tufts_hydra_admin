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
gem 'om'
gem 'solrizer'
gem 'solrizer-fedora', :git=>"https://github.com/mkorcy/solrizer-fedora.git", :branch => "3.x", :ref => "254cd03"
gem 'active-fedora', :git=>"https://github.com/mkorcy/active_fedora.git", :branch =>"class_exists", :ref => "a9355bb1b47c6c62bee75ee8f838cee5a78a975c"
# we should remove the dependency on chronic it doesn't do what we originally intended and now its a mess
gem 'chronic'
gem 'titleize'
gem 'settingslogic'
