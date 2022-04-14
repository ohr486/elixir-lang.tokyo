# elixir-lang.tokyo

## CI Status

| branch  | test&lint                                                                                                                                                 |
|:--------|:----------------------------------------------------------------------------------------------------------------------------------------------------------|
| master  | [![CircleCI](https://circleci.com/gh/ohr486/elixir-lang.tokyo/tree/master.svg?style=svg)](https://circleci.com/gh/ohr486/elixir-lang.tokyo/tree/master)   |
| develop | [![CircleCI](https://circleci.com/gh/ohr486/elixir-lang.tokyo/tree/develop.svg?style=svg)](https://circleci.com/gh/ohr486/elixir-lang.tokyo/tree/develop) |

## How to setup local env

```bash
$ git clone git@github.com:ohr486/elixir-lang.tokyo.git
$ cd elixir-lang.tokyo/app
$ docker-compose build
$ docker-compose run app mix setup
$ docker-compose run app mix ecto.migrate
$ docker-compose up -d
```

## ERD

```bash
$ cd app
$ docker-compose run app mix erd
$ ./open_erd.sh
```

