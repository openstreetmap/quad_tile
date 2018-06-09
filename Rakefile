require "bundler/gem_tasks"
require "rake/testtask"
require "rake/extensiontask"


task default: :test
Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList["test/*_test.rb"]
  t.warning = false
end

Rake::ExtensionTask.new "quad_tile" do |ext|
  ext.lib_dir = "lib/quad_tile"
end
