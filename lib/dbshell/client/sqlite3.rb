module DBShell
  module Client
    class Sqlite3
      EXECUTABLE_NAME = 'sqlite3'

      def self.runshell(db_info)
        args = self.build_command(db_info)
        exec(*args)
      end

      def self.build_command(db_info)
        args = [
          EXECUTABLE_NAME,
          db_info['database']
        ]
      end
    end
  end
end
