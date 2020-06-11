require "http/client"
require "log"

# A tiny load generator
module LoadGenerator
  VERSION = "0.1.0"

  def self.run(host : String)
    Log.info { "Starting load generator. Waiting some time for the server to start." }
    sleep(20.seconds)

    Log.info { "Starting the requests..." }
    wait_channel = Channel(Nil).new
    10.times do
      spawn do
        loop do
          HTTP::Client.get "server:3000/current_time"
          sleep(Random.new.rand(1).seconds)
        end
      end
    end
    wait_channel.receive
  end
end

LoadGenerator.run("server:3000")