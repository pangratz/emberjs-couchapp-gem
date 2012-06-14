Gem to create a CouchApp using Ember.js [![Build Status](https://secure.travis-ci.org/pangratz/emberjs-couchapp-gem.png?branch=master)](http://travis-ci.org/pangratz/emberjs-couchapp-gem) [![Dependency Status](https://gemnasium.com/pangratz/emberjs-couchapp-gem.png)](https://gemnasium.com/pangratz/emberjs-couchapp-gem)
=======================================

Installation
------------

    $ gem install emberjs-couchapp

Usage
-----

    $ emberjs-couchapp new appname

Created App Structure
---------------------

    appname
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

You can automatically execute the tests every time a file changes via

    $ bundle exec guard


Developing this Gem
-------------------

    $ gem install gem-release
    $ gem bump // to bump version
    $ gem release --tag // to release new version