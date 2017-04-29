require 'minitest/autorun'
require 'dbshell/client/database'

describe DBShell::Client::Database do
  describe ".handler" do
    it "handles SQLite3" do
      DBShell::Client::Database.handler({
        'adapter' => 'sqlite3'
      }).must_equal(DBShell::Client::Sqlite3)
    end

    it "handles Postgres" do
      DBShell::Client::Database.handler({
        'adapter' => 'postgresql'
      }).must_equal(DBShell::Client::Postgres)
    end

    it "raises an error if no suitable adapter is found" do
      proc do
        DBShell::Client::Database.handler({
          'adapter' => 'sybil_system'
        })
      end.must_raise(DBShell::InvalidDatabaseAdapter)
    end
  end
end
