require 'dbshell/client/database'

task :dbshell do
  env = ENV.fetch('RAILS_ENV', 'development')

  DBShell::Client::Database.runshell(
    Rails.application.config.database_configuration[env]
  )
end

# Alias 'dbshell' to 'db:shell'
namespace :db do
  task shell: :dbshell
end
