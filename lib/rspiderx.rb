require 'rspiderx/version'
require 'rspiderx/loader'

# Main application, it will glue different modules, load them and start
# the app execution
module Rspiderx
  class << self
    def run(args)
      warn 'Rspiderx.run already called' && return if @is_called

      modules = args[:modules]
      @objects = {}

      # Create mediator
      @objects[:mediator] = Loader.get_mediator(modules.delete(:mediator))

      # Create other modules
      modules.each do |type, plugin|
        @objects[type] = Loader.get(type, @objects[:mediator], plugin)
      end

      @is_called = 1
    end

    def mediator
      @objects[:mediator]
    end

    def fetcher
      @objects[:fetcher]
    end

    def parser
      @objects[:parser]
    end

    def crawler
      @objects[:crawler]
    end

    def queue
      @objects[:queue]
    end

    def consumers
      @objects[:consumers]
    end

    def feeder
      @objects[:feeder]
    end
  end
end
