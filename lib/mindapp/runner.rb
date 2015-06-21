module MindApp
  class Runner

    def initialize(argv)
      @options = Options.new(argv)
      @command = ARGV[0]
    end

    def run
      require 'json'
      case @command
      when "new"
        puts "new app"
      else
        puts "unknown command: #{@command}"
        file = File.read("mindapp.conf")
        config = JSON.parse(file)
        p config["knowledge"]
        p config["repository"]["url"]
      end
    end

  end
end
