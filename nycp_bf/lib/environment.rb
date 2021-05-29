require_relative "./version"
require_relative "./cli"
require_relative "./park"
require_relative "./scraper"

require 'pry'
require 'nokogiri'
require 'open-uri'

module NycpBf
  class Error < StandardError; end
  # Your code goes here...
end
