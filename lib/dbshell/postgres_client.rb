class DBShell::PostgresClient
  EXECUTABLE_NAME = 'psql'

  def self.build_command(db_info)
    args = [EXECUTABLE_NAME]

    host = db_info['host']
    port = db_info['port']
    db_name = db_info['database']
    user = db_info['username']
    password = db_info['password']

    args.push('-U', user) if user
    args.push('-h', host) if host
    args.push('-p', port) if port
    args.push(db_name)
  end
end
