module Rspiderx
  # The module that will handle communication between different modules
  # You can think about it as the interface that other modules will publish
  # events to and subcribe to its events.
  class Mediator
    def initialize(mediator)
      @mediator = mediator
    end

    def subscribe(obj)
      @mediator.subscribe(obj)
    end

    def publish(event)
      @mediator.publish(event)
    end
  end
end
