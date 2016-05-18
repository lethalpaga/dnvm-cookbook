require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec)

require 'kitchen/rake_tasks'
Kitchen::RakeTasks.new

task :default => [:spec, 'kitchen:all']
