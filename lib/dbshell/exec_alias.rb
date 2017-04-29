module DBShell
  class ExecAlias
    def self.exec(command_args)
      Kernel.exec(*self.build_command(command_args))
    end

    def self.build_command(command_args)
      [ENV['SHELL'], '--login', '-c', command_args.join(' ')]
    end
  end
end
