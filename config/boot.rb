# Copyright 2011-2013 Rice University. Licensed under the Affero General Public 
# License version 3 or later.  See the COPYRIGHT file for details.

require 'rubygems'

# Set up gems listed in the Gemfile.
ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)

require 'bundler/setup' if File.exists?(ENV['BUNDLE_GEMFILE'])

require 'rails/commands/server'

module Rails
  class Server

    DEV_PORT = 3001

    alias :default_options_alias :default_options
    def default_options
      default_options_alias.merge!(:Port => DEV_PORT)
    end    
  end
end
