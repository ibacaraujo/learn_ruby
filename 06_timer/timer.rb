class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end
  
  def time_string
	#time_str = @seconds.to_s
	#hours = @seconds / 3600
	#minutes = @seconds / 60 - 60
	#seconds = @seconds / 100
	
	#if @seconds < 60
	#  if time_str.length == 1
    #    return "00:00:0#{@seconds}"
	#  else
	#    return "00:00:#{@seconds}"
	#  end
	#end
	#if @seconds > 60 and @seconds < 3600
	#  seconds = @seconds-60
	#  return "00:01:0#{seconds}"
    #end
	#if @seconds >= 3600
	#  return "0#{hours}:0#{minutes}:#{seconds}"
	#end
	return Time.at(@seconds).utc.strftime("%H:%M:%S")
  end
end
