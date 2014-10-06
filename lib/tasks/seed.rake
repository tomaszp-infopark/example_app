require 'seed_cms'

desc 'Generate some example data in its own Working Copy'
task :seed_cms => :environment do
  SeedCms.call
end
