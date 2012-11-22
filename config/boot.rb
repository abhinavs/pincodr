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
require 'rack/throttle'
Bundler.require

require "#{File.dirname(__FILE__)}/database"
require "#{File.dirname(__FILE__)}/../models/pin"


