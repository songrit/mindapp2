require 'optparse'

module MindApp
  class Options

    DEFAULT_DICTIONARY = "/usr/share/dict/words"

    attr_reader :dictionary
    attr_reader :words_to_find

    def initialize(argv)
      @dictionary = DEFAULT_DICTIONARY
      parse(argv)
      @words_to_find = argv
    end

  private

    def parse(argv)
      OptionParser.new do |opts|
        opts.banner = "Usage:  mindapp [ options ]  command ..."

        opts.on("-d", "--dict path", String, "Path to dictionary") do |dict|
          @dictionary = dict
        end

        opts.on("-h", "--help", "Show this message") do
          puts opts
          exit
        end
        opts.on("-v", "--version", "Display version") do
          puts "MindApp "+MindApp::VERSION
          exit
        end

        begin
          argv = ["-h"] if argv.empty?
          opts.parse!(argv)
        rescue OptionParser::ParseError => e
          STDERR.puts e.message, "\n", opts
          exit(-1)
        end
      end
    end
  end
end
