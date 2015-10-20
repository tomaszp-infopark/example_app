#!/bin/sh

rm scrivito/migrate/*_engine.rb
bundle exec rake scrivito:migrate scrivito:migrate:publish --trace
