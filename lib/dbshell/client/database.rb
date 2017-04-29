require 'dbshell/client/sqlite3'
require 'dbshell/client/postgres'
require 'dbshell/client/mysql'

module DBShell
  module Client
    class Database
      def self.handler(connection_params)
        case connection_params['adapter']
        when 'sqlite3'
          DBShell::Client::SQLite3
        when 'postgresql'
          DBShell::Client::Postgres
        when 'mysql2'
          DBShell::Client::MySQL
        else
          raise UnsupportedDatabaseAdapter
        end
      end

      def self.runshell(connection_params)
        self
          .handler(connection_params)
          .runshell(connection_params)
      end
    end


    class UnsupportedDatabaseAdapter < StandardError; end
  end
end
