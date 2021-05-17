ENV["SINATRA_ENV"] ||= "development"

require_relative './config/environment'
require 'sinatra/activerecord/rake'

use Rack::MethodOverride
use Rack::JSONBodyParser

desc "Launc Console"
task :console do
  Pry.start
end

namespace :db do
  task :import do
    system("bundle exec ruby #{File.dirname(__FILE__)}/bin/import_pins.rb #{File.dirname(__FILE__)}/db/fixtures/pins.psv")
    puts "Loaded pincodes"
  end
end
