require 'dbshell/client/sqlite3'
require 'dbshell/client/postgres'

class DBShell::DatabaseClient
  def self.handler(connection_params)
    case connection_params['adapter']
    when 'sqlite3'
      DBShell::Sqlite3Client
    when 'postgresql'
      DBShell::PostgresClient
    else
      raise DBShell::InvalidDatabaseAdapter
    end
  end

  def self.runshell(connection_params)
    self
      .handler(connection_params)
      .runshell(connection_params)
  end
end


class DBShell::InvalidDatabaseAdapter < StandardError; end
