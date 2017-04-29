require "dbshell/rails/version"

Dir[
  File.join(File.dirname(__FILE__),
  'rails',
  'tasks',
  '**/*.rake')
].each do |rake|
  load rake
end

module DBShell
  module Rails
  end
end
