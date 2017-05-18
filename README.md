# Just Do It with Sinatra

To do list app to test out Sinitra.

## Demo

[https://sinatra-justdoit.herokuapp.com/](https://sinatra-justdoit.herokuapp.com/)

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

```
ruby 2.4.1
Sinatra 1.4.8
sqlite 3.13.0
```

### Installing

To initialize development environment:

```
git clone https://github.com/tonnamb/sinatra-justdoit.git
cd sinatra-justdoit
bundle install --without production
```

To migrate database: enter console by `irb`

```
require './main'
DataMapper.setup(:default, ENV['DATABASE_URL'] || "sqlite3://#{Dir.pwd}/development.db")
DataMapper.auto_migrate!
```

To have a running server:

```
bundle exec rackup
```

Visit [localhost:9292](http://localhost:9292/) in your browser.

## Deployment to Heroku

You will a [Heroku](https://www.heroku.com) account and these programs installed:

```
heroku-cli/5.9.4
git version 2.11.0
```

To deploy to Heroku:

```
heroku login
heroku create your-unique-app-name
heroku config:add BUNDLE_WITHOUT="development:test" --app your-unique-app-name
heroku addons:add heroku-postgresql:hobby-dev
git push heroku master
heroku open
```

To migrate database on Heroku:

```
heroku console
require './main'
DataMapper.setup(:default, ENV['DATABASE_URL'] || "sqlite3://#{Dir.pwd}/development.db")
DataMapper.auto_migrate!
```

To push updates to Heroku:

```
git push heroku master
```

## Built With

* [Sinatra](http://www.sinatrarb.com/) - The web framework used

## Acknowledgments

* [Just Do It: Learn Sinatra](https://www.sitepoint.com/just-do-it-learn-sinatra-iv/)