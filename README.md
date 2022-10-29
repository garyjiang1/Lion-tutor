# Run
## Run locally
First, we need to install the correct ruby environment

### check ruby version
```sh
# check your ruby version
# if the ruby version is not 3.1.0, please go to install the correct ruby version
ruby -v
```

### check rails version
```sh
# check your rails version
# for our project we are using rails version 7.0.4
# Type the command below to confirm the correct version is installed
 rails -v
```

### Install Gem
Run `bundle install --without production` to make sure all gems are properly installed. 

### Create the initial database schema:

```shell
bundle exec rake db:migrate
bundle exec rake db:test:prepare
```
- You can optionally add some seed data in `db/seeds.rb` and run `rake db:seed` to add it.

## Then you can run tests by using
```shell
bundle exec cucumber
bundle exec rspec
```

## Start server
`rails server -b localhost`

## Heroku Link
https://blooming-reef-86407.herokuapp.com/

## Github Link
https://github.com/Monirul1/COMSW4152_lion_tutor

# Contributors 🥒
The thanks goes to these wonderful people

- Md Monirul Islam (im2594)
- Faiza Khan (fk2421)
- Jiawei Jiang (jj3179)
- Sahitya Raipura (sr3962)

## If experiencing issues in "bundle install" stating "An error occurred while installing pg (1.4.4), and Bundler cannot continue # In Gemfile: pg" then run:
```shell
brew install postgresql
gem install pg -v '1.2.3' --source 'https://rubygems.org/
```
