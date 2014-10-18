require 'webrick'

module Mrack
  module Handler
    class Webrick < ::WEBrick::HTTPServlet::AbstractServlet
      def self.run(app, options={})
        args = {}
        args[:BindAddress]      = options.delete(:host)
        args[:Port]             = options.delete(:port)
        args[:OutputBufferSize] = 5
        server = ::WEBrick::HTTPServer.new(args)
        server.mount "/", Rack::Handler::WEBrick, app
        server.start
      end
    end
  end
end
