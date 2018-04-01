# RedirecTails - *yet-another* URL shortener.

This project makes your URL to more useful, short URLs. It is easy to use. Just enter your URL and get shortener URL.

> I'm using [GitLab](https://gitlab.com/BerkhanBerkdemir/redirectails) for issue tracker and CI.
> Maybe I can change main repository hosting with GitHub but now GitHub just a mirror.

![](screenshot.png)

## Latest

**Version**: 1.1.0

* [Download as a zip](https://gitlab.com/BerkhanBerkdemir/redirectails/repository/1.1.0/archive.zip)

* [Download as a tar.bz2](https://gitlab.com/BerkhanBerkdemir/redirectails/repository/1.1.0/archive.tar.bz2)

or other versions click the [link](https://gitlab.com/BerkhanBerkdemir/redirectails/tags)

## Installation

Please follow the [documentation](doc/installation.md)

> Don't forget. You need to initiliaze a PostgreSQL database. You can find how in the installation documentation.

```shell
gem install bundle
RAILS_ENV=development
DATABASE_URL=postgres://redirectails:secretpassw0rd@localhost/
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

### Code of Conduct

Please note that this project is released with a [Contributor Code of Conduct](CODE_OF_CONDUCT.md). By participating in this project you agree to abide by its terms.

## Feature Plan

* Admin dashboard for manage URLs and see URL analytics

## Maintainers

* Berkhan Berkdemir - [GitHub](https://github.com/BerkhanBerkdemir) | [Twitter](https://twitter.com/BerkhanBerkdemi)

## License

See [LICENSE](LICENSE)
