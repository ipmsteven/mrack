module Mrack
  class Builder
    def initialize(&block)
      instance_eval(&block) if block_given?
    end

    def run(app)
      @run = app
    end

    def to_app
      @run
    end

    def self.parse_file(file)
      config_file = File.read(file)
      new_form_string(config_file)
    end

    def self.new_form_string(mrack_script)
      eval "Mrack::Builder.new {\n" + mrack_script + "\n}.to_app"
    end
  end
end
