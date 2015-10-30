
require 'socket'

class Redk::Smdr::Client

  def initialize(host, port=1752)
    @host = host
    @port = port
  end

  def read
    socket = TCPSocket.open(@host, @port)
    begin
      while line = socket.gets
        yield Redk::Smdr::Matcher.match(line, Redk::Smdr::Matcher::Extended.level_2)
      end
    ensure
      socket.close
    end
  end
end
