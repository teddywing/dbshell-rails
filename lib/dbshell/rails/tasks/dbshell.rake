task :dbshell do
# {"default"=>{"adapter"=>"sqlite3", "pool"=>5, "timeout"=>5000}, "development"=>{"adapter"=>"sqlite3", "pool"=>5, "timeout"=>5000, "database"=>"db/development.sqlite3"}, "test"=>{"adapter"=>"sqlite3", "pool"=>5, "timeout"=>5000, "database"=>"db/test.sqlite3"}, "production"=>{"adapter"=>"sqlite3", "pool"=>5, "timeout"=>5000, "database"=>"db/production.sqlite3"}}
  Rails.application.config.database_configuration
  # system('bash')
  exec('bash')
end
