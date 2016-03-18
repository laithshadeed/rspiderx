module Rspiderx
  # Interface for the module responsible for the initial feed for the fetcher
  class Feeder
    def initialize(mediator, feeder)
      @mediator = mediator
      @feeder = feeder
    end

    def feed(input)
      event = @feeder.feed(input)
      @mediator.publish(event)
    end
  end
end
