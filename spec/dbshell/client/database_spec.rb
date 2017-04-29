require 'minitest/autorun'
require 'dbshell/client/database'

describe DBShell::DatabaseClient do
  describe ".handler" do
    it "handles SQLite3" do
      DBShell::DatabaseClient.handler({
        'adapter' => 'sqlite3'
      }).must_equal(DBShell::Sqlite3Client)
    end

    it "handles Postgres" do
      DBShell::DatabaseClient.handler({
        'adapter' => 'postgresql'
      }).must_equal(DBShell::PostgresClient)
    end

    it "raises an error if no suitable adapter is found" do
      proc do
        DBShell::DatabaseClient.handler({
          'adapter' => 'sybil_system'
        })
      end.must_raise(DBShell::InvalidDatabaseAdapter)
    end
  end
end
