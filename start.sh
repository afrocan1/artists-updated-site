#!/bin/bash
set -e
bundle exec rails db:create db:migrate
bundle exec rails server -b 0.0.0.0 -p $PORT
