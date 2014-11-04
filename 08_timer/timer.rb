# require 'time'

class Timer
	attr_accessor :seconds

	def initialize (seconds = 0)
		@seconds = seconds
	end
	
	def time_string 

		hours = (@seconds / (60 * 60))
		hours_in_seconds = hours * 60 * 60

	    minutes = ((@seconds - hours_in_seconds) / 60)
	    minutes_in_seconds = minutes * 60

	    seconds = (@seconds - hours_in_seconds - minutes_in_seconds)
	    
	    '%02d:%02d:%02d' % [hours, minutes, seconds]
		
	end
end

