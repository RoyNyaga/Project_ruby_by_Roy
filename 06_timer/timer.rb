class Timer
  #write your code here
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    hours = @seconds/3600
    left = @seconds - hours*3600
    min = left/60
    @seconds = left - 60*min

    if hours < 10
        hours = "0#{hours}"
    end
    if min < 10
        min = "0#{min}"
    end
    if @seconds < 10
        @seconds = "0#{@seconds}"
    end

    "#{hours}:#{min}:#{@seconds}"
  end

end
