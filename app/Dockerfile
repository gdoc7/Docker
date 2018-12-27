
FROM ruby:2.5.1
RUN apt-get update -qq && apt-get install -y postgresql-client build-essential libpq-dev nodejs
RUN mkdir /docker_app
COPY Gemfile* ./
RUN bundle install
COPY . . 

CMD rails server 