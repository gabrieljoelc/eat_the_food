# (Tina, ) Eat The Food

[![Build Status](https://travis-ci.org/gabrieljoelc/eat_the_food.svg?branch=master)](https://travis-ci.org/gabrieljoelc/eat_the_food)

![image](https://user-images.githubusercontent.com/147849/29489509-89dadeea-84d7-11e7-951f-4b0cdb8aa672.png)

## Prerequisites

- Docker and Docker Compose

## Development

```
cp .env.example .env
docker-compose up website
```

Development url: http://localhost:3000

Note: the other services in `docker-compose.yml` are not yet setup.

## Deployment

### Heroku

```
heroku container:login
heroku container:push -R
```

