module Rspiderx
  # Sample implementation for feeding the initial data for the fetcher
  class FeederSimple
    def feed(input)
      return {
        event: 'feed',
        data: input
      }
    end
  end
end
