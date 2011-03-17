begin
  require "jeweler"
  Jeweler::Tasks.new do |gem|
    gem.version = "0.1.1"
    gem.author = "luigibyte"
    gem.email = "luigibyte@gmail.com"
    gem.homepage = "http://github.com/llopez/js_router"
    gem.name = "js_router"
    gem.summary = "Rails routes to js functions"
    gem.files = Dir["{lib}/**/*", "{app}/**/*", "{config}/**/*"]
    gem.add_dependency 'yui-compressor'
  end
rescue
  puts "Jeweler or one of its dependencies is not installed."
end

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/*_test.rb'
  test.verbose = true
end
