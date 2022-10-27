# To run:
- bundle install
- rails db:migrate
- rails s

# Installing
- installing rspec: rails generate rspec:install

# Run tests
- run: cucumber -s   
- run rspec: rspec
- to view coverage: running rspec will generate a html report directory locally

# If experiencing issues in "bundle install" stating "An error occurred while installing pg (1.4.4), and Bundler cannot continue # In Gemfile: pg" then run:
- brew install postgresql
- gem install pg -v '1.2.3' --source 'https://rubygems.org/'

