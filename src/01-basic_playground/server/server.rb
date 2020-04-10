# frozen_string_literal: true

require 'sinatra'
require 'sinatra/reloader'

get '/current_time' do
  json({ current_time: Time.now.to_s })
end
