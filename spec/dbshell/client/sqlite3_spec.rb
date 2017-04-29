require 'minitest/autorun'
require 'dbshell/client/sqlite3'

describe DBShell::Client::Sqlite3 do
  describe ".build_command" do
    it "builds basic arguments" do
      DBShell::Client::Sqlite3.build_command({
        'adapter' => 'sqlite3',
        'database' => 'db/development.sqlite3'
      }).must_equal([
        'sqlite3',
        'db/development.sqlite3'
      ])
    end
  end
end
