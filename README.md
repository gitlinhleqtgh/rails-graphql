# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions
* Setup:
- cloned
- generate master key and update (https://webcrunch.com/posts/the-complete-guide-to-ruby-on-rails-encrypted-credentials)
- Build and run docker.
-> docker-compose build
- Create DB
docker-compose run api bash
-> bundle exec rake db:drop
-> bundle exec rake db:create
-> bundle exec rake db:migrate
-> bundle exec rake db:seed
- Run app
docker-compose up
- Testing
-> using postman to access to http://0.0.0.0:3000/graphql
using graphQL request to send query like queries at app/graphql/postman/queries

* ...
