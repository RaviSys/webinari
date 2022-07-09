# Webinari

This is the repository of our course project *Bunting Real World Web Apps with Rails 7* and below are the steps to setup the project.

## Dependencies

This project required minimum ruby version as 2.7.1 and the rails version 7.0

## Setup Project
```
git clone https://github.com/RaviSys/webinari.git
cd webinari
bundle install
rails db:create
rails db:migrate
rails db:seed
```

## Setup Yarn 
```
yarn install
```

## Setting up Stripe Keys

First create an account on stripe and then copy your test environment keys. And then create a new file into the project with name .env and place these keys there like this:
```
STRIPE_PUBLISHABLE_KEY="YOUR_STRIPE_PUBLISHABLE_KEY_HERE"
STRIPE_SECRET_KEY="YOUR_STRIPE_SECRET_KEY_HERE"
```

## Run the project

After finishing all these steps let's run the rails server and open your browser at [Here](http://localhost:3000)

## Video Tutorial

The complete guide for this project to learn things on [Building Real World Web Application with Rails 7 | Bootstrap 5 | Stripe](https://www.youtube.com/watch?v=XbtcK8Sy7Pg&list=PL6SEI86zExmv7wAb5pv3cTVijg1OXEnzP)


## More learning content

If you want to learn more in Ruby on Rails please visit our channel [APPSIMPACT Academy](https://www.youtube.com/channel/UC_w56RtvZI31rKoe43tRCog) on youtube.