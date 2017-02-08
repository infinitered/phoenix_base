# PhoenixBase

[![Slackin](https://infiniteredcommunity.herokuapp.com/badge.svg)](https://infiniteredcommunity.herokuapp.com/)
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
- **Bourbon/Neat/Bitters** for front end
- **Webpack** for assets
- **Ecto 2.0** for database
- **Hound** for integration tests
- **Swoosh** for email

## Continuous Integration

Setting up a CI server such as [Semaphore](https://semaphoreci.com/) is easy with the included scripts. Set up your build to run the setup command. (It also runs `bin/ci`)

```bash
MIX_ENV=test bin/setup
```

## Running Tests Locally

You can also use `bin/ci` to run the tests locally to ensure everything will pass on your CI build.

## Renaming the project

Since it is likely you'll want to change the name of this project after you've cloned it, we've included a script to make it easy for you:

```bash
  bin/rename_project PhoenixBase phoenix_base CoolProject cool_project
```

Note: this command relies on `sed`. It has been tested on recent Mac versions of `sed` (macOS 10.11+) and GNU sed. If you're on a Mac and need to upgrade, try `brew install gnu-sed` and follow the instructions to update your $PATH.

## Front end

PhoenixBase comes with a basic Bitters setup for front end HTML/CSS and grid. You can learn more about it
at the links below, but here is an intro.

### Basic setup

1. Set up your grid in web/static/css/base/_grid-settings.sass (uses [Bourbon Neat](http://neat.bourbon.io))
2. In the same folder, set up global variables (colors, etc) in _variables.scss
3. Put custom fonts in assets/fonts and import in web/static/css/base/_fonts.sass
4. Edit your app, header, and footer templates in web/templates/layout

Note that the Bitters files (web/static/css/base/*.scss) are autogenerated and should be left alone.

### Layout and Components

Layouts are used for structuring and laying out your pages and making them respond to mobile
responsive styles. Look at web/static/css/layouts/_home.sass for an example.

Components are for detailed styling of various page components.

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: http://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
  * Bourbon: http://bourbon.io/
  * Neat: http://neat.bourbon.io/
  * Bitters: http://bitters.bourbon.io/

## License

See the [LICENSE](LICENSE) file for license rights and limitations (MIT).
