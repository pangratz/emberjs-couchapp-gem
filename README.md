Ember Couchapp Skeleton
=======================

A Couchapp skeleton which uses Ember.js

Installation
------------

    $ git clone git@github.com:pangratz/ember-couchapp-template.git
    $ cd ember-couchapp-template

Change APPNAME in `Rakefile` and `Assetfile` to your couchapp name

    $ bundle install
    $ bundle execute rake init

Delete the `init` task from `Rakefile`.

Running
-------

    $ bundle exec rackup

App Structure
-------------

    ember-couchapp-template
    ├── Assetfile - App build file
    ├── Gemfile - Package dependencies for rakep/rack
    ├── Gemfile.lock - Here be dragons: don't touch, always include
    ├── app - App specific code
    │   ├── index.html - The app entry point
    │   ├── css - App CSS or SCSS (.scss)
    │   ├── lib - App code, *modularized during build*
    │   ├── modules - Module code, *already modularized*
    │   ├── plugins - Plugins (e.g. jquery.jsonrpc.js)
    │   │   └── loader.js - JS module loader
    │   ├── static - Static files, never touched, copied over during build
    │   ├── templates - Handlebars templates, *modularized during build*
    │   ├── tests - App tests
    │   └── vendor - Vendor code, *modularized during build*
    ├── _attachments - Built out asset files
    ├── config.ru - Rack development web server configuration
    └── tmp - Temporary build files used by rakep

Testing
-------

You can test the app by invoking

    $ bundle exec rake test

This executes the tests by using [Phantom.JS](http://www.phantomjs.org/), which you need to have installed.

Or you can run the tests via

    $ bundle exec rackup
    $ open http://localhost:9292/tests/index.html

You can automatically execute the tests everytime a file changes via

    $ bundle exec guard
