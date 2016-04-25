# PhoenixBase

[![Build Status](https://semaphoreci.com/api/v1/projects/9501757c-f8e0-4a06-9b90-04f22ea5cd74/662754/badge.svg)](https://semaphoreci.com/ir/phoenix_base)
[![Deps Status](https://beta.hexfaktor.org/badge/all/github/infinitered/phoenix_base.svg)](https://beta.hexfaktor.org/github/infinitered/phoenix_base)
[![Node Dependency Status](https://david-dm.org/infinitered/phoenix_base.svg)](https://david-dm.org/infinitered/phoenix_base)

PhoenixBase is maintained by [Infinite Red](http://infinite.red), a web and mobile development company based in Portland, OR and San Francisco, CA.

To start your Phoenix app:

  1. Set up the app with `bin/setup`
  3. Start Phoenix endpoint with `mix phoenix.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Highlights

- **Batteries included**. Scripts to set up the project, run all tests, etc.
- **Slim** templating engine
- **Webpack** for assets

## Continuous Integration

Setting up a CI server such as [Semaphore](https://semaphoreci.com/) is easy with the included scripts. Set up your build to run the setup command. (It also runs `bin/ci`)

```bash
MIX_ENV=test bin/setup
```

## Running Tests Locally

You can also use `bin/ci` to run the tests locally to ensure everything will pass on your CI build.

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: http://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
