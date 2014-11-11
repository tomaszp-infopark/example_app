#!/bin/sh

bundle exec rake scrivito:migrate seed_cms scrivito:migrate:publish
