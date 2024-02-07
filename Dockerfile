FROM ruby:3.2.3-slim

RUN apt-get update && apt-get -y install cron

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

WORKDIR /usr/src/gitlab-timesheets

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

RUN cat ./crontab | crontab -

CMD ["/usr/sbin/cron", "-f"]
