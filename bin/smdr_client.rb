#!/usr/bin/env ruby
require "thor"
require "redk/smdr"


class SMDRClient < Thor
  method_option :host, :type => :string, :aliases => "-h", :default => 'localhost', :desc => "Specify what host to connect to"
  method_option :port, :type => :numeric, :aliases => "-p", :default => 1752, :desc => "Specify what port to connect to"
  desc "connect to HOST", "connect to HOST and start printing parsed records"
  def client()
    client = Redk::Smdr::Client.new(options[:host], options[:port])
    puts "Connecting to #{options[:host]}:#{options[:port]}"
    client.read do |data, line|
      puts line
      data.each do |key, value|
        puts "\t#{key} => #{value}"
      end
      puts "---"
    end
  end

  default_task :client
end

SMDRClient.start(ARGV)
