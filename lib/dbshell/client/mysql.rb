module DBShell
  module Client
    class MySQL
      EXECUTABLE_NAME = 'mysql'

      def self.build_command(db_info)
        args = [EXECUTABLE_NAME]

        host = db_info['host']
        port = db_info['port']
        db_name = db_info['database']
        user = db_info['username']
        password = db_info['password']

        args.push("--user=#{user}") if user
        args.push("--password=#{password}") if password
        args.push("--host=#{host}") if host
        args.push("--port=#{port}") if port
        args.push(db_name)
      end
    end
  end
end
