require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "ilinkmaker"
    gem.summary = %Q{Ruby wrapper for the iTunes Store Search API}
    gem.description = %Q{Ruby wrapper for the iTunes Store Search API}
    gem.email = "johnnyn@gmail.com"
    gem.homepage = "http://github.com/phuphighter/ilinkmaker"
    gem.authors = ["Johnny Khai Nguyen"]
    
    gem.add_dependency('httparty', '>= 0.5.0')
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: sudo gem install jeweler"
end

desc 'Default: run unit tests.'
task :default => :test

desc 'Test ilinkmaker'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end
