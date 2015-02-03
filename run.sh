#!/bin/sh

rm scrivito/migrate/*_engine.rb
bundle exec rake fiona7:initialize scrivito:migrate:install scrivito:migrate seed_cms scrivito:migrate:publish --trace
