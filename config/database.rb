require 'active_record'
# gem 'sqlite3'

module Pincode
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

Pincode::Database.start(ENV['APP_ENV'])
