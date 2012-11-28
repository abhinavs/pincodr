$:.<< File.dirname(__FILE__)

require File.join(File.dirname(__FILE__), 'config', 'boot')
require 'rack/throttle'
require "sinatra/jsonp"
# TODO https://github.com/wal/sinatra_api_example-/blob/master/sinatra_api_example.rb

module Pincode
  class Application < Sinatra::Base
    helpers Sinatra::Jsonp

    #register Sinatra::Synchrony

    use Rack::Throttle::Daily,    :max => 1000  # requests
    use Rack::Throttle::Hourly,   :max => 100   # requests
    #use Rack::Throttle::Interval, :min => 1   # seconds

    configure do
      set :public_folder, File.join(File.dirname(__FILE__), 'public')
    end

    mime_type :json, "application/json"
    before { content_type :json }

    not_found do
      jsonp({:error => "not found"})
    end

    helpers do
      def deliver_output(pins)
        if pins.nil? || pins.empty?
          not_found
        else
          jsonp(pins.map(&:attrs))
        end
      end
    end

    get '/' do
      content_type :html
      erb :about
    end

    get "/pin/:pin" do
      deliver_output(Pin.get(params[:pin], :pin))
    end

    get "/area/:area" do
      deliver_output(Pin.get(params[:area], :area))
    end

    get "/taluk/:taluk" do
      deliver_output(Pin.get(params[:taluk], :taluk))
    end

    get "/tehsil/:tehsil" do
      deliver_output(Pin.get(params[:tehsil], :tehsil))
    end

    get "/district/:district" do
      deliver_output(Pin.get(params[:district], :district))
    end

    get '/search/:value' do
      deliver_output(Pin.find_like(params[:value]))
    end
 end
end
