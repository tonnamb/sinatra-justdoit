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
```

### Installing

To get a development environment running:

```
git clone https://github.com/tonnamb/sinatra-justdoit.git
cd sinatra-justdoit
bundle install --without production
bundle exec rackup
```

Visit [localhost:3000](http://localhost:3000/) in your browser.

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
heroku config:set PUBLISHABLE_KEY=pk_test_your_Stripe_publishable_key SECRET_KEY=sk_test_your_Stripe_secret_key
git push heroku master
heroku open
```

To push updates to Heroku:

```
git push heroku master
```

## Built With

* [Rails](http://rubyonrails.org/) - The web framework used
* [Stripe](https://rometools.github.io/rome/) - Payments
* [activeadmin](https://activeadmin.info/) - Administration framework

## Acknowledgments

* [Just Do It: Learn Sinatra](https://www.sitepoint.com/just-do-it-learn-sinatra-iv/)