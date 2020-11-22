FROM ruby:2.6.5

RUN gem update --system
RUN gem install bundler

COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock

WORKDIR /app
RUN bundle install

VOLUME /app

CMD bundle exec rackup -p 3000 --host 0.0.0.0
