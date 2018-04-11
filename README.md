# Getting Started with Rails – Basic Blog

This is the completed application from the official [Getting Started with Rails](http://guides.rubyonrails.org/getting_started.html) guide. There are a few small changes:

1. `http_basic_authenticate_with` was removed to simplify and make testing easier
2. Test::Unit and Fixtures were replaced with [RSpec](http://rspec.info/) and [FactoryBot](https://github.com/thoughtbot/factory_bot)
3. Some seed data was added to make testing easier

## Setup

Assuming you have a local version of Ruby, run:

    $ bundle install
    $ rake db:setup
    $ rails server

Navigate to http://localhost:3000/articles in your browser. You should see a list of 30 articles with auto-generated text from [Faker::Hipster](https://github.com/stympy/faker/blob/master/doc/hipster.md). Every 4th article (Article 0, Article 4, Article 8, etc) should have between 1 and 3 comments on it as well.
