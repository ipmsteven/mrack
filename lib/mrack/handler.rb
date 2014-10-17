require 'thin'

module Mrack
  module Handler
    def self.default
      Mrack::Handler::Thin
    end

    class Thin
      def self.run(app, options={})
        host = options[:host]
        port = options[:port]
        args = [host, port, app, options]
        server = ::Thin::Server.new(*args)
        server.start
      end
    end
  end
end
