# Use the official Ruby image: https://hub.docker.com/_/ruby
FROM ruby:2.6-alpine

# Throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

WORKDIR /usr/src/app

# Install dependencies with bundler
COPY Gemfile Gemfile.lock ./
RUN bundle install

# Copy code to the image
COPY . .

# Run the app when the vm starts
CMD ["ruby", "./server.rb"]
