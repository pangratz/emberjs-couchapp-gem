APPNAME = 'my-couchapp'

require 'colored'
require 'rake-pipeline'

desc "Build #{APPNAME}"
task :build do
  Rake::Pipeline::Project.new('Assetfile').invoke
end

desc "Clean #{APPNAME}"
task :clean do
  Rake::Pipeline::Project.new('Assetfile').clean
end

desc "Run tests with PhantomJS"
task :test => :build do
  unless system("which phantomjs > /dev/null 2>&1")
    abort "PhantomJS is not installed. Download from http://phantomjs.org/"
  end

  cmd = "phantomjs tests/qunit/run-qunit.js \"file://#{File.dirname(__FILE__)}/tests/index.html\""

  # Run the tests
  puts "Running #{APPNAME} tests"
  success = system(cmd)

  if success
    puts "Tests Passed".green
  else
    puts "Tests Failed".red
    exit(1)
  end
end

desc "Automatically run tests (Mac OS X only)"
task :autotest do
  system("kicker -e 'rake test' app")
end

desc "Init app"
task :init do
  Rake::Pipeline::Project.new('Initfile').invoke
  
  FileUtils.mv("couchappignore", ".couchappignore")
  FileUtils.mv("couchapprc", ".couchapprc")
  
  FileUtils.rm_rf('Initfile')  
  FileUtils.rm_rf('app_template')
  FileUtils.rm_rf('tests_template')
  FileUtils.rm_rf('couchapp_template')
  
  FileUtils.rm_rf('.git')
  `git init`
  
  puts "App initialized. Remove 'init' task from Rakefile"
end