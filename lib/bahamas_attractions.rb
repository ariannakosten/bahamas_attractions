require "bahamas_attractions/version"

module BahamasAttractions
  class Error < StandardError; end
  # Your code goes here...
end

require 'pry'
require 'nokogiri'
require 'open-uri'

require_relative '.bahamas_attractions/cli.rb'
require_relative '.bahamas_attractions/attractions.rb'
require_relative '.bahamas_attractions/scraper.rb'

#.. goes back one level - . stay in this level