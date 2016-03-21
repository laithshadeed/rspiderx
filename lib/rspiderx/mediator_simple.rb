require 'observer'

module Rspiderx
  # Simple implementation for mediator module. The idea is allow many different
  # implementation.
  class MediatorSimple
    include Observable

    def initialize(args)
      # TODO: Handle arguments, if needed
    end

    def subscribe(obj)
      add_observer(obj)
    end

    def publish(event)
      notify_observers(event)
    end
  end
end
