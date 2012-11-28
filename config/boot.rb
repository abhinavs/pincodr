ENV['APP_ENV'] ||= 'development'
require 'rubygems'
require 'yaml'
Configuration = YAML.load_file(File.join(File.dirname(__FILE__), 'config.yml'))

require 'bundler'
require 'logger'
require 'sinatra'
#require 'sinatra/synchrony'
require 'active_record'
require 'json'
Bundler.require

require "#{File.dirname(__FILE__)}/database"
require "#{File.dirname(__FILE__)}/../models/pin"

=begin
Sinatra::Base.set :environment => ENV['APP_ENV'].to_sym,
  # :root => File.join(File.dirname(__FILE__), '..'),
  :raise_errors => true,
  :dump_errors => true,
  :static => true,
  :app_file => File.join(File.dirname(__FILE__), '..', 'pincode.rb')
=end


