module Mrack
  class Server
    PORT = "5566"
    HOST = "localhost"
    ENVIRONMENT = "development"

    def initialize(args)
      @options          = default_options
      @options[:config] = args[0]
      @app              = build_app
    end

    def start
      server.run @app, @options
    end

    def self.start
      new(ARGV).start
    end

    private

    def default_options
      {
        environment: ENVIRONMENT,
        port: PORT,
        host: HOST
      }
    end

    def build_app
      Mrack::Builder.parse_file(@options[:config])
    end

    def server
      @server ||= Mrack::Handler.default
    end
  end
end
