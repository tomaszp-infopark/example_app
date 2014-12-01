#!/bin/sh

rm scrivito/migrate/*_engine.rb
bundle exec rake scrivito:migrate:install scrivito:migrate seed_cms scrivito:migrate:publish --trace
