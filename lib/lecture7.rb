require "lecture7/version"
require_relative 'lecture7/search'

module Lecture7

  class Phim123 < Search
    def initialize(options = {})
      options[:pattern] ||= {class: 'film-name'}
      options[:url] ||= "http://123phim.vn/phim"
      super(options)
    end
  end
  # Your code goes here...
end
