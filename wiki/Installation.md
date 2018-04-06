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

## Deploy to an Heroku dyno

### Prerequisite

* Heroku account
* Heroku toolbent

### Deploy

#### Clone RedirecTails from Github

```shell
git clone https://github.com/BerkhanBerkdemir/redirectails.git
cd redirectails/
```

or

You can download stable release from [releases](https://github.com/BerkhanBerkdemir/redirectails/releases) page.

If you download from releases page you need to unzip the package and enter with command line into directory.

```shell
cd redirectails/
```

#### Use `master` branch (aka. Stable)

```shell
git checkout master
```

#### Login your Heroku account

```shell
heroku login
```

Toolbent will ask your email and password.

#### Create an application

```shell
heroku apps:create
```

> When you just run this command your application will deploy in US. Also you have an option for `eu`. You **may not** change your application location after deploy.

#### Create a PostgreSQL database

```shell
 heroku addons:create heroku-postgresql:hobby-dev --app [APP]
```

When you run this command, you don't need to worry about assign or create an environment variable. Heroku will do for you. Also, you can use another provider. You can find below this part.

##### Other PostgreSQL as a Service providers

* ElephantSQL - https://www.elephantsql.com
* AWS RDS - https://aws.amazon.com/rds/postgresql
* Google Cloud SQL - https://cloud.google.com/sql

> Heroku uses Amazon Web Services infrastructure

#### Create environment variables

```shell
heroku config:set RAILS_ENV=production --app [APP]
heroku config:set NAME=Admin --app [APP]
heroku config:set PASSWORD=secretpassw0rd --app [APP]
heroku config --app [APP] # You can see your environment variables
```

#### Deploy RedirecTails with git

```shell
cd redirectails/
heroku git:remote --app [APP]
git push heroku master
heroku run --app [APP] "bin/rails db:setup"
```
