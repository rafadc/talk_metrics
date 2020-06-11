# frozen_string_literal: true

require 'rack'
require 'prometheus/middleware/collector'
require 'prometheus/middleware/exporter'
require_relative 'server.rb'

use Rack::Deflater
use Prometheus::Middleware::Collector
use Prometheus::Middleware::Exporter

run Sinatra::Application
