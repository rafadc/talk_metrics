# frozen_string_literal: true

require 'json'

require 'sinatra'
require 'sinatra/reloader'

get '/current_time' do
  content_type :json
  { current_time: Time.now.to_s }.to_json
end
