require 'dbshell/exec_alias'

module DBShell
  module Client
    class Postgres
      EXECUTABLE_NAME = 'psql'

      def self.runshell(db_info)
        args = self.build_command(db_info)
        DBShell::ExecAlias.exec(args)
      end

      def self.build_command(db_info)
        args = [EXECUTABLE_NAME]

        host = db_info['host']
        port = db_info['port']
        db_name = db_info['database']
        user = db_info['username']
        password = db_info['password']

        args.push('-U', user) if user
        args.push('-h', host) if host
        args.push('-p', port.to_s) if port
        args.push(db_name)
      end
    end
  end
end
