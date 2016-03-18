module Rspiderx
  # The interface for the module responsible for fetching (downloading) data
  # from the internet. The actual implementation is in plugin so that you can
  # switch to different implemenations easily.
  class Fetcher
    def initialize(mediator, fetcher)
      @mediator = mediator
      @fetcher = fetcher
    end

    def fetch(http_request)
      @fetch.fetch(http_request)
    end
  end
end
