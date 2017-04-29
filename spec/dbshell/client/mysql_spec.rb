require 'minitest/autorun'
require 'dbshell/client/mysql'

describe DBShell::Client::MySQL do
  describe ".build_command" do
    it "builds basic arguments" do
      DBShell::Client::MySQL.build_command({
        'adapter' => 'mysql2',
        'host' => 'mailmarehost',
        'port' => 6027,
        'username' => 'derpyhooves',
        'password' => 'somepassword',
        'database' => 'dbname'
      }).must_equal([
        'mysql',
        '--user=derpyhooves',
        '--password=somepassword',
        '--host=mailmarehost',
        '--port=6027',
        'dbname'
      ])
    end
  end
end
