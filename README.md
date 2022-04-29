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

![ERD-Graph](./tmp.erd.png)


## TODO: How to setup AWS Resources

```bash
$ cd aws
$ terraform init
$ terraform plan
```

## TODO: Reference Implementation List

- App
  - Database
    - RDB
      - [ ] PostgreSQL
      - [x] MySQL
      - [ ] CloudSpanner
    - CloudDB
      - [ ] DynamoDB
    - KVS
      - [ ] Redis
      - [ ] Memcached
    - MultiDB
      - TODO
  - API
    - REST
      - [ ] PhoenixController
    - WebSocket
      - [ ] PhoenixChannel
    - GraphQL
      - TODO
    - gRPC
      - TODO
  - View
    - TODO
  - Task Queue
    - [ ] exq
  - Admin
    - [ ] ex\_admin
  - Auth
    - LDAP
      - [ ] ex\_ldap
  - Monitoring
    - [ ] NewRelic
    - [ ] DataDog
    - [ ] AppSignal
    - [ ] ScountApp
    - [ ] Splunk

- Local Development Environment
  - Docker
    - [x] Dockerfile
    - [x] docker-compose
  - Test
    - Lint
      - [x] credo
      - [ ] dogma
    - Static Analysis
      - [ ] dialyxir
    - TDD
      - TODO
  - Document
    - Swagger
      - [ ] phoenix\_swagger
    - ERD
      - [x] ecto\_erd
  - IDE/Editor
    - [ ] VisualStudioCode
    - [ ] JetBrain
    - [ ] vim
    - [ ] emacs

- DevOps
  - CI
    - [ ] Github Action
    - [x] CircleCI
    - [ ] TravisCI
  - Notification
    - [ ] slack
    - [ ] discord
    - [ ] chatwork
  - Bot
    - TODO

- Load Test
  - TODO

- Security Test
  - TODO

- Infrastructure
  - Cloud
    - AWS
      - LoadBalancer
        - [ ] ALB
      - Compute
        - [ ] EC2
        - [ ] ECS
        - [ ] EKS
      - Database
        - [ ] Aurora
        - [ ] ElastiCache
      - CDN
        - [ ] S3
        - [ ] CloudFront
      - CI/CD
        - [ ] CodePipeline
        - [ ] CodeBuild
        - [ ] CodeDeploy
      - Firewall
        - [ ] WAF
      - Security
        - TODO
    - GCP
      - LoadBalancer
        - TODO
      - Compute
        - [ ] GCE
        - [ ] GKE
        - [ ] GAE
      - Database
        - TODO
      - CDN
        - TODO
      - CI/CD
        - TODO
      - Firewall
        - TODO
      - Security
        - TODO
    - Azure
      - TODO
  - PaaS
    - [ ] Heroku
    - [ ] Gigalixir
    - [ ] Fly.io

