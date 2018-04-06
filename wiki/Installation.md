# Installation

Before you set your development environment make sure you have at least Ruby 2.3. We didn't test RedirecTails under Ruby version 2.3.

## Create development environment

```shell
export RAILS_ENV=development \
  NAME=Admin PASSWORD=secretpassw0rd \
  DATABASE_URL="postgres://redirectails:secretpassw0rd@localhost/" # Make sure you don't assign database name with URL
bundle # If it doesn't work, run with sudo
bin/rails db:setup
```

> Name and Password for admin dashboard's http authentication. You have to have.

### Using Docker as a PostgreSQL database

| PostgreSQL version | tag          |
| ------------------ | ------------ |
| 10                 | `alpine`     |
| 9.6                | `9-alpine`   |
| 9.5                | `9.5-alpine` |
| 9.4                | `9.4-alpine` |
| 9.3                | `9.3-alpine` |

> According to [the official postgres container](https://hub.docker.com/_/postgres/)

```shell
docker run \
  --name redirectails-postgres \
  --env POSTGRES_USER=redirectails \
  --env POSTGRES_PASSWORD=secretpassw0rd \
  --env POSTGRES_DB=redirectails_development \
  --detach \
  --publish 5432:5432 postgres:alpine
```
