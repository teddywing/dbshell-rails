require 'dbshell/database_client'

task :dbshell do
  env = ENV.fetch('RAILS_ENV', 'development')

  DBShell::DatabaseClient.runshell(
    Rails.application.config.database_configuration[env]
  )
end
