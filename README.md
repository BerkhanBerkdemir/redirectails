# RedirecTails - *yet-another* URL shortener.

| Master | Dev |
| ------ | --- |
| [![pipeline status](https://gitlab.com/BerkhanBerkdemir/redirectails/badges/master/pipeline.svg)](https://gitlab.com/BerkhanBerkdemir/redirectails/commits/master) | [![pipeline status](https://gitlab.com/BerkhanBerkdemir/redirectails/badges/dev/pipeline.svg)](https://gitlab.com/BerkhanBerkdemir/redirectails/commits/dev) |
| [![coverage report](https://gitlab.com/BerkhanBerkdemir/redirectails/badges/master/coverage.svg)](https://gitlab.com/BerkhanBerkdemir/redirectails/commits/master) | [![coverage report](https://gitlab.com/BerkhanBerkdemir/redirectails/badges/dev/coverage.svg)](https://gitlab.com/BerkhanBerkdemir/redirectails/commits/dev) |

This project makes your URL to more useful, short URLs. It is easy to use. Just enter your URL and get shortener URL.

> I'm using [GitLab](https://gitlab.com/BerkhanBerkdemir/redirectails) for issue tracker and CI.
> Maybe I can change main repository hosting with GitHub but now GitHub just a mirror.

![](screenshot.png)

## Latest

**Version**: 1.2.1

* [Download as a zip](https://gitlab.com/BerkhanBerkdemir/redirectails/repository/1.2.1/archive.zip)

* [Download as a tar.bz2](https://gitlab.com/BerkhanBerkdemir/redirectails/repository/1.2.1/archive.tar.bz2)

or other versions click the [link](https://gitlab.com/BerkhanBerkdemir/redirectails/tags)

## Installation

Please follow the [documentation](doc/installation.md)

> Don't forget. You need to initiliaze a PostgreSQL database. You can find how in the installation documentation.

```shell
gem install bundle
RAILS_ENV=development
DATABASE_URL=postgres://redirectails:secretpassw0rd@localhost/
USER=Admin
PASSWORD=secretpassw0rd
bundle
bin/rails db:setup
```

## Technologies

* PostgreSQL as a database
* Bootstrap as a frontend
* Heroku as a PaaS

## Documentation

See [documentation](doc/index.md)

## Contributing

Please refer to [contributing documentation](CONTRIBUTING.md).

### Coverage

[Simplecov coverage](https://berkhanberkdemir.gitlab.io/redirectails/coverage)

### Important links

[Demo from master branch](https://production-redirectails.herokuapp.com/)
[Ruby code coverage](https://berkhanberkdemir.gitlab.io/redirectails/coverage)
[Main repository](https://gitlab.com/BerkhanBerkdemir/redirectails)
[Mirror repository](https://github.com/BerkhanBerkdemir/redirectails)

### Code of Conduct

Please note that this project is released with a [Contributor Code of Conduct](CODE_OF_CONDUCT.md). By participating in this project you agree to abide by its terms.

## Feature Plan

* Admin dashboard for manage URLs and see URL analytics

## Maintainers

* Berkhan Berkdemir - [GitHub](https://github.com/BerkhanBerkdemir) | [Twitter](https://twitter.com/BerkhanBerkdemi)

## License

See [LICENSE](LICENSE)
