require "bundler/gem_tasks"
require "rake/testtask"
require "rake/extensiontask"

Rake::Task[:test].prerequisites << :compile

task default: :test

Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList["test/*_test.rb"]
  t.warning = false
end

spec = Gem::Specification.load("quad_tile.gemspec")

Rake::ExtensionTask.new "quad_tile", spec do |ext|
  ext.lib_dir = "lib/quad_tile/"
end
