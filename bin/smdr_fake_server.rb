#!/usr/bin/env ruby
require 'socket'

$LOAD_PATH.unshift File.expand_path('../../spec', __FILE__)
require 'spec_helper'

server = TCPServer.new 1752
loop do
  begin
    puts "Listening..."
    client = server.accept
    puts "connected to #{client}"
    loop do
      client.puts test_log_line
      sleep rand 3
    end
  rescue
    client.close
  end
end
