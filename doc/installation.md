# Installation

## Development

```shell
export RAILS_ENV=development
bundle
bin/rails db:setup
```

### Using Docker as a PostgreSQL database

```shell
docker run \
  --name redirectails-postgres \
  --env POSTGRES_USER=redirectails \
  --env POSTGRES_PASSWORD=secretpassw0rd \
  --env POSTGRES_DB=redirectails_development \
  --detach \
  --publish 5432:5432 postgres:alpine
export DATABASE_URL="postgres://redirectails:secretpassw0rd@localhost/"
```

> Don't assign database name because you will use this database for development and test environment.
