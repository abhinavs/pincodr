require 'rubygems'
require 'rake'
require './pincode'
require 'sinatra/activerecord/rake'

task :environment do
  require "#{File.dirname(__FILE__)}/config/boot"
end

namespace :db do
  task :import => :environment do
    system("ruby #{File.dirname(__FILE__)}/script/import_pins.rb #{File.dirname(__FILE__)}/db/fixtures/pins.psv")
    puts "Loaded pincodes"
  end
end
