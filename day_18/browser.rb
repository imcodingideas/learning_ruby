require 'rubygems'
require 'nokogiri'
require 'open-uri'

class Page
  def initialize(url)
    @url = url
  end

  def fetch!
    get_url = File.open(@url)
    file = Nokogiri::HTML(get_url)
  end
  #
  # def links
  # end
  #
  # def title
  # end
end

class Browser
  def run!

  end
end

p Browser.new.run!