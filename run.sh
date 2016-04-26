#!/bin/sh

bundle exec rake scrivito:migrate scrivito:migrate:publish --trace &&
  bundle exec rails runner script/setup_workflows.rb
