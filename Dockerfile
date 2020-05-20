FROM ruby:2.7.1-alpine
RUN apk add --update --no-cache build-base git nodejs yarn tzdata postgresql-dev

WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN bundle install --deployment --without development test --jobs 4

COPY . ./app

RUN RAILS_ENV=production bundle exec rails assets:precompile

ENTRYPOINT ["./docker-entrypoint-web.sh"]
