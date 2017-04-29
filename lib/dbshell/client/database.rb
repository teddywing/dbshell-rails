require 'dbshell/client/sqlite3'
require 'dbshell/client/postgres'

module DBShell
  module Client
    class Database
      def self.handler(connection_params)
        case connection_params['adapter']
        when 'sqlite3'
          DBShell::Client::Sqlite3
        when 'postgresql'
          DBShell::Client::Postgres
        else
          raise InvalidDatabaseAdapter
        end
      end

      def self.runshell(connection_params)
        self
          .handler(connection_params)
          .runshell(connection_params)
      end
    end


    class InvalidDatabaseAdapter < StandardError; end
  end
end
