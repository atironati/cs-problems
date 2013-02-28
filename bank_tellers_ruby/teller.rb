class Teller
  attr_accessor :name, :short_request_time, :long_request_time, :customer, :time_remaining

  def initialize n, srt, lrt
    @name = n
    @short_request_time = srt
    @long_request_time = lrt
    @time_remaining = 0
    @customer = c
  end

  def process

  end
end
