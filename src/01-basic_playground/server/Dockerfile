FROM ruby:2.6-jessie

RUN gem update --system
RUN gem install bundler
RUN bundle config path /app/.bundle

VOLUME /app

WORKDIR /app

CMD bundle exec rackup -p 3000 -o 0.0.0.0
