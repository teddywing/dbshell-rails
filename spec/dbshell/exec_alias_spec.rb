require 'minitest/autorun'
require 'dbshell/exec_alias'

describe DBShell::ExecAlias do
  describe ".build_command" do
    it "prefixes the command with an interactive version of the current \
        shell" do
      DBShell::ExecAlias.build_command([
        'psql',
        '-U',
        'derpyhooves',
        '-h',
        'mailmarehost',
        '-p',
        '6027',
        'dbname'
      ]).must_equal([
        ENV['SHELL'],
        '-i',
        '-c',
        'psql -U derpyhooves -h mailmarehost -p 6027 dbname'
      ])
    end
  end
end
