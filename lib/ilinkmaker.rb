# iLinkmaker
require 'rubygems'
gem 'httparty'
require 'httparty'

directory = File.expand_path(File.dirname(__FILE__))

module Ilinkmaker
  
  # create config/initializers/ilinkmaker.rb
  # 
  # Ilinkmaker.configure do |config|
  #   config.partner_id = 'partner_id'
  #   config.linkshare_url = 'linkshare_url'
  # end
  # client = Ilinkmaker::Client.new
  #
  # or
  #
  # Ilinkmaker.partner_id = 'partner_id'
  # Ilinkmaker.linkshare_url = 'linkshare_url'
  #
  # or
  #
  # Ilinkmaker::Client.new(:partner_id => 'partner_id', :linkshare_url => 'linkshare_url')
  
  def self.configure
    yield self
    true
  end

  class << self
    attr_accessor :partner_id, :linkshare_url
  end
  
end

require File.join(directory, 'ilinkmaker', 'client')
