require 'observer'

module Rspiderx
  # Simple implementation for mediator module. The idea is allow many different
  # implementation.
  class MediatorSimple
    include Obserable

    def subscribe(obj)
      add_observer(obj)
    end

    def publish(event)
      notify_observers(event)
    end
  end
end
