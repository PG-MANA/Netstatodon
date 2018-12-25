#!/bin/sh
git pull
docker-compose build --no-cache
docker-compose down
docker-compose run --rm web bundle exec rake db:migrate
docker-compose up -d
