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
end


class DBShell::InvalidDatabaseAdapter < StandardError; end
