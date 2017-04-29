require 'minitest/autorun'
require 'dbshell/client/database'

describe DBShell::Client::Database do
  describe ".handler" do
    it "handles SQLite3" do
      DBShell::Client::Database.handler({
        'adapter' => 'sqlite3'
      }).must_equal(DBShell::Client::SQLite3)
    end

    it "handles Postgres" do
      DBShell::Client::Database.handler({
        'adapter' => 'postgresql'
      }).must_equal(DBShell::Client::Postgres)
    end

    it "handles PostGIS" do
      DBShell::Client::Database.handler({
        'adapter' => 'postgis'
      }).must_equal(DBShell::Client::Postgres)
    end

    it "handles MySQL" do
      DBShell::Client::Database.handler({
        'adapter' => 'mysql2'
      }).must_equal(DBShell::Client::MySQL)
    end

    it "raises an error if no suitable adapter is found" do
      proc do
        DBShell::Client::Database.handler({
          'adapter' => 'sybil_system'
        })
      end.must_raise(DBShell::Client::UnsupportedDatabaseAdapter)
    end
  end
end
