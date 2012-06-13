require "bundler/gem_tasks"
require File.expand_path('../lib/emberjs-couchapp/version', __FILE__)

desc "run the specs"
task :spec do
    sh "rspec -cfs spec"
end

desc "build gem"
task :build do
  sh "gem build emberjs-couchapp.gemspec"
end

desc "install gem"
task :install => :build do
  sh "gem install pkg/emberjs-couchapp-#{EmberjsCouchapp::VERSION}.gem"
end