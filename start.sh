#!/bin/bash
set -e
echo "==> Running migrations..."
bundle exec rails db:create db:migrate
echo "==> Starting server on port $PORT..."
bundle exec rails server -b 0.0.0.0 -p $PORT
