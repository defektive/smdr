$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'redk/smdr'

def test_log_line
  " 10/30 11:22:18  0000:00:07 T10     0000 8885554444 5556666 1260 70 S7008           X 1200                 001   8885554444           5556666            S0015697 A                                            "
end
