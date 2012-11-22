require 'active_record'
# gem 'sqlite3'

module Pinkode
  module Database
    def self.start(env)
      puts "Connecting to #{env} database"
      ActiveRecord::Base.configurations = Configuration["database"]
      ActiveRecord::Base.logger = Logger.new("#{File.dirname(__FILE__)}/../log/#{env}.log")
      ActiveRecord::Base.establish_connection(env.to_s)
      ActiveRecord::Base.connection_pool.instance_variable_set('@size', 100)
    end
  end # Database
end

Pinkode::Database.start(ENV['APP_ENV'])
