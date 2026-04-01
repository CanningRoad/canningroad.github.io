# Create a Jekyll container from a Debian image
# With thanks to https://flyingpreacher.github.io/

# My ruby-version is 3.2.3 so let's use 
FROM ruby:3.2.7-slim-bullseye

# Add Jekyll dependencies to Debian
RUN apt-get update && apt-get upgrade -y
RUN apt-get install build-essential git -y

WORKDIR /blog

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

RUN bundle exec jekyll build
