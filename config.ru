require 'rubygems'
require File.join(File.dirname(__FILE__), 'pincode')
set :environment, ENV['APP_ENV'].to_sym
#use Pincode::Application
#run Sinatra::Base
run Pincode::Application
