module Rspiderx
  class Consumer
    def initialize(consumers)
      @consumers = []
    end

    def add_consumer(consumer)
      @consumers.push(consumer)
    end
  end
end
