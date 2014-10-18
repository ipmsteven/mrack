module Mrack
  module Handler
    def self.default
      #Mrack::Handler::Thin
      Mrack::Handler::Webrick
    end
  end
end
