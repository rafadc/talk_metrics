# frozen_string_literal: true

require 'json'

require 'sinatra'
require 'sinatra/reloader'

require 'prometheus/client'

prometheus = Prometheus::Client.registry

histogram = Prometheus::Client::Histogram.new(
  :clockio_complex_calculation_seconds, 
  docstring: 'The time it takes our secret sauce to calculate the timings', 
  buckets: [0.01, 0.1, 0.3, 0.6, 1, 1.5, 10, 20]
)
prometheus.register(histogram)

get '/current_time' do
  content_type :json

  histogram.observe(
    Benchmark.realtime { 
      complex_operation 
    }
  )

  { current_time: Time.now.to_s }.to_json
end

BEGIN {
  def complex_operation
    case rand 100
    when 1
      sleep 10
    when 2..10
      sleep 2
    end
  end
}