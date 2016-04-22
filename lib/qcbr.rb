require 'socket'
require 'logger'

class Qcbr
  VERSION = "0.1.0"

  @@logger = Logger.new STDERR

  class << self
    def encode_text(text)
      [
        text.encode('UTF-16LE').chars.map { |i|
          i.unpack("H*").first.reverse.rjust(8, "0")
        }.flatten.join
      ].pack('h*')
    end

    def send(text, dst_addr='225.0.0.0', port=50000)
      UDPSocket.new.send(
        encode_text(text),
        0,
        dst_addr, port
      )
      @@logger.info "sent: #{text}"
    end
  end
end
