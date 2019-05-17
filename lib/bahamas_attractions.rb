require "bahamas_attractions/version"

module BahamasAttractions
  class Error < StandardError; end
  # Your code goes here...
end

require 'pry'
require 'nokogiri'
require 'open-uri'

require_relative '../lib/cli'
require_relative '../lib/attractions'
require_relative '../lib/scraper'
