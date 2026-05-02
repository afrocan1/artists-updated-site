#!/bin/bash
echo "==> Running migrations..."
bundle exec rails db:migrate --trace
echo "==> Migration exit code: $?"
echo "==> Starting server on port $PORT..."
bundle exec rails server -b 0.0.0.0 -p $PORT
