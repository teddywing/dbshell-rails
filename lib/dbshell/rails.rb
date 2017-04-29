require "dbshell/rails/version"

module DBShell
  module Rails
    Dir[
      File.join(File.dirname(__FILE__),
      'rails',
      'tasks',
      '**/*.rake')
    ].each do |rake|
      load rake
    end
  end
end
