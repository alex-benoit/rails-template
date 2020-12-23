# README

# Overview

Rails 6 template

# Deployment

[GitHub Actions](https://github.com/ivy-app/brimstone/actions) to deploy the Rails application

# Development

## Setup

Prerequisites:

- Ruby (version as specified in [`.ruby_version`](./.ruby-version))
  - [Rbenv](https://github.com/rbenv/rbenv) is recommended to manage your Ruby version
- [PostgreSQL](https://www.postgresql.org/) 12.x
- [Redis](https://redis.io/) 5.x
- [Yarn](https://yarnpkg.com/lang/en/)

Setup steps:

```
git clone git@github.com:alex-benoit/rails-template.git
cd rails-template
bin/setup
```

<!-- ## Run tests

Run the tests and linters to verify your setup:

```
bundle exec rake
``` -->

<!-- ### Test coverage

To view the coverage test report, run the tests with the following environment variable:

```sh
COVERAGE=1 bundle exec rspec
open coverage/index.html
``` -->

## Run the app

To run the app locally you may need to ask a colleague for the secrets to
complete the following file:

- `.env.development.local`

Once you have this, start-up the app by running:

```
bundle exec rails s
```

<!-- When running the app locally to pre-populated data for users, run the seed file:

```
rake db:seed
``` -->

<!-- ## API Documentation

The API documentation is driven by requests & responses from the test suite.
Request specs tagged with `:api_documentation` are included in the
documentation.

To view the documentation visit `/api/docs` locally, or on staging / production.

### Updating API documentation

If you've made changes to the API, run the following command to refresh the data
used for the documentation:

```
bundle exec rails api_docs:generate
```

Then commit any changes to `doc/api.yaml`. -->

# Code structure & patterns

## Interactors

API operations with complex business-logic are implemented with
[`Interactors`](https://github.com/ivy-app/brimstone/tree/master/app/interactors). Some
simple API operations (e.g. 3-5 lines of code) remain inline within a controller.

## Presenters

Complex API responses are generated with [`Presenters`](https://github.com/ivy-app/brimstone/tree/master/app/interactors).
These are typically plain Ruby classes which 'render' hashes or arrays, which the Controller marshals to JSON.

<!-- # Translations / Localisation (i18n)

The application is available in different languages (e.g. English, German) via
standard Rails i18n. Translations are managed via [Phrase](https://phrase.com/).

Install the [Phrase CLI](https://phrase.com/cli/) then run the following
commands as required:

```sh
phraseapp push # uploads new strings from config/locales/*.en.yml files
phraseapp pull # downloads translations for each locale
```

## Legal Localisation

The application also includes a fine-grained locales required for the terms &
conditions. These are region & language specific (e.g. de-DE) but only affect
the legal documents, not the language of the website. These combinations are
configured with `SupportedLanguage` records, which can be managed via the
Administrate dashboard. -->
