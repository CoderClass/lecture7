require "lecture7/version"
require 'mechanize'

module Lecture7
  # Your code goes here...
  class Search
    attr_reader :url

    def initialize(options = {})
      @url = options[:url]
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
      page.links_with(class: 'film-name').map(&:text)
    end
  end
end
