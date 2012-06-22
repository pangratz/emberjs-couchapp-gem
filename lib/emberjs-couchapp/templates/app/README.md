Couchapp using Ember.js
=======================

Couchapp using Ember.js and Rake Pipeline.

Running
-------

    $ bundle install
    $ bundle exec rackup

App Structure
-------------

    ember-skeleton
    ├── Assetfile - App build file
    ├── Gemfile - Package dependencies for rakep/rack
    ├── Gemfile.lock - Here be dragons: don't touch, always include
    ├── app - App specific code
    │   ├── css - App CSS or SCSS (.scss)
    │   ├── lib - App code, *modularized during build*
    │   ├── modules - Module code, *already modularized*
    │   ├── plugins - Plugins (e.g. jquery.jsonrpc.js)
    │   │   └── loader.js - JS module loader
    │   ├── static - Static files, never touched, copied over during build
    │   ├── templates - Handlebars templates, *modularized during build*
    │   ├── tests - QUnit application tests
    │   └── vendor - Vendor code, *modularized during build*
    ├── _attachments - Built out asset files, minified in production
    |   ├── index.html
    │   ├── app.css - Built out app CSS/SCSS
    │   ├── app.js - Built out app JS
    │   └── loader.js - Built out JS module loader
    ├── test_assets - Built out test asset files
    ├── config.ru - Rack development web server configuration
    ├── tests - QUnit testing files
    │   ├── index.html - The testing entry point
    │   ├── qunit - Testing support files
    │   └── run-tests.js - The PhantomJS QUnit test runner
    └── tmp - Temporary build files used by rakep

Testing
-------

You can test the app by invoking:

    $ bundle exec rake test

This executes the tests by using [PhantomJS](http://www.phantomjs.org/),
which you need to have installed.

Or you can run the tests via:

    $ bundle exec rackup
    $ open http://localhost:9292/tests/index.html

If you want to continuously run the tests every time a file changes, invoke:

    $ bundle exec guard
