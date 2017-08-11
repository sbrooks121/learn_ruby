class Timer

  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    convert_seconds
    time = (padding @hours) + ":" + (padding @minutes) + ":" + (padding @seconds)
  end

  private

  def convert_seconds
    @elapsed_time = @seconds

    #get hours
    @hours = (@elapsed_time / 60 / 60).to_i
    @elapsed_time = @elapsed_time - (@hours * 60 * 60)

    #get minutes
    @minutes = (@elapsed_time / 60).to_i
    @elapsed_time = @elapsed_time - (@minutes * 60)

    #get seconds
    @seconds = @elapsed_time
  end

  def padding value
    #set to 00 format
    if value > 9
      return value.to_s
    else
      return "0" + value.to_s
    end
  end
end
