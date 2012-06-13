require 'thor'
require 'emberjs-couchapp/app_generator'

module EmberjsCouchapp
  class CLI < Thor
    include Thor::Actions

    desc 'new PATH', 'Create a new CouchApp using Ember.js'
    def new(path)
      EmberjsCouchapp::AppGenerator.start([path])
    end
  end
end
