class DBShell::Sqlite3Client
  EXECUTABLE_NAME = 'sqlite3'

  def self.build_command(db_info)
    args = [
      EXECUTABLE_NAME,
      db_info['database']
    ]
  end
end
