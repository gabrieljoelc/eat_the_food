# (Tina, ) Eat The Food

## Prerequisites

* [Docker](https://docs.docker.com/engine/installation/)
* [Docker Compose](https://docs.docker.com/compose/install/)

## Setup

### Convenient aliases for Docker Compose
Add the following to your `~/.bash_aliases`:

```
alias dc='docker-compose'
alias dcr='docker-compose run --rm'
alias dcu='docker-compose up'
```

Then:

```
source ~/.bash_aliases
```

## Running Locally

```
dcu
```

Open http://localhost:3000

## Deployment

### Heroku

```
heroku container:login
heroku container:push -R
```

