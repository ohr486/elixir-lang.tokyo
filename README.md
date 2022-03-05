# elixir-lang.tokyo

## CI status

### app develop
[![CircleCI](https://circleci.com/gh/ohr486/elixir-lang.tokyo/tree/develop.svg?style=svg)](https://circleci.com/gh/ohr486/elixir-lang.tokyo/tree/develop)

## How to setup local env

```bash
$ git clone git@github.com:ohr486/elixir-lang.tokyo.git
$ cd elixir-lang.tokyo/app
$ docker-compose build
$ docker-compose run app mix setup
$ docker-compose run app mix ecto.migrate
$ docker-compose up -d
```

