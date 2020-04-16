# frozen_string_literal: true

require 'json'

require 'sinatra'
require 'sinatra/reloader'

get '/current_time' do
  content_type :json
  case rand 100
  when 1
    sleep 10
  when 2..10
    sleep 2
  end
  { current_time: Time.now.to_s }.to_json
end
