# elixir-lang.tokyo

## How to setup local env

```bash
$ git clone git@github.com:ohr486/elixir-lang.tokyo.git
$ cd elixir-lang.tokyo/app
$ docker-compose build
$ docker-compose run app mix setup
$ docker-compose run app mix ecto.migrate
$ docker-compose up -d
```

