require 'minitest/autorun'
require 'dbshell/postgres_client'

describe DBShell::PostgresClient do
  describe ".build_command" do
    DBShell::PostgresClient.build_command({
      'adapter' => 'postgresql',
      'host' => 'mailmarehost',
      'port' => 6027,
      'username' => 'derpyhooves',
      'password' => 'somepassword',
      'database' => 'dbname'
    }).must_equal([
      'psql',
      '-U',
      'derpyhooves',
      '-h',
      'mailmarehost',
      '-p',
      '6027',
      'dbname'
    ])
  end
end
