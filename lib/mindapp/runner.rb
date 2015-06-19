module MindApp
  class Runner

    def initialize(argv)
      @options = Options.new(argv)
    end

    def run
      require 'optparse'

      # Options = Struct.new(:name)
      #
      # class Parser
      #   def self.parse(options)
      #     args = Options.new("world")
      #
      #     opt_parser = OptionParser.new do |opts|
      #       opts.banner = "Usage: #{File.basename($0)} [options]"
      #
      #       opts.on("-nNAME", "--name=NAME", "Name to say hello to") do |n|
      #         args.name = n
      #         puts "Hello #{args.name}"
      #       end
      #
      #       opts.on("-h", "--help", "Prints this help") do
      #         puts opts
      #         exit
      #       end
      #     end
      #
      #     opt_parser.parse!(options)
      #     return args
      #   end
      # end
      # # options = Parser.parse %w[--help]
      # options = Parser.parse ARGV
      command = ARGV[0]
      p command
      # p lib_path
    end

  end
end
