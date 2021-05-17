class PincodrController < ApplicationController
  helpers Sinatra::Jsonp
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
