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

TODO:
## How to setup AWS Resources

```bash
$ cd aws
$ terraform init
$ terraform plan
```

## Task List

- App
  - Database
    - [ ] PostgreSQL
    - [x] MySQL
  - Cache
    - [ ] Redis
    - [ ] Memcached
  - Task
    - [ ] exq
  - Document
    - Swagger
      - [ ] phoenix\_swagger
    - ERD
      - [x] ecto\_erd
  - Test
    - Lint
      - [x] credo
  - Admin
    - [ ] ex\_admin

- Local Development Environment
  - Docker
    - [x] Dockerfile
    - [x] docker-compose

- CI
  - [ ] Github Action
  - [x] CircleCI
  - [ ] TravisCI

- Infrastructure
  - Cloud
    - AWS
      - [ ] EC2
      - [ ] ECS
      - [ ] EKS
    - GCP
      - [ ] GCE
      - [ ] GKE
      - [ ] GAE
  - PaaS
    - [ ] Heroku
    - [ ] Gigalixir
    - [ ] Fly.io

