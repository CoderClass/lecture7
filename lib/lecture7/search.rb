require 'mechanize'
module Lecture7
  class Search
    attr_reader :url, :pattern

    def initialize(options = {})
      @url = options[:url]
      @pattern = options[:pattern]
    end

    def movies
      if url
        search_on_url(url)
      else
        []
      end
    end

    def search_on_url(url)
      agent = Mechanize.new
      page = agent.get(url)
      page.links_with(pattern).map(&:text)
    end
  end
end
