ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

#ActiveRecord::Base.establish_connection(
 # :database_file => "#{File.dirname(__FILE__)}/database.yml"
  #:adapter => "postgres",
  #:database => ENV['DATABASE_URL'] || 'pincodr_dev'
#)

require './app/controllers/application_controller'
require_all 'app'
