class Temperature
	

	def initialize (hash_value)
		if hash_value[:c] 
			@temp = hash_value[:c] * (9.0/5) + 32
		else hash_value[:f]
			@temp = hash_value[:f]
		end 
	end

	def to_fahrenheit
		return @temp
	end

	def to_celsius
		return ((@temp -32) * 5/ 9.0).to_i
	end

	def self.in_fahrenheit(value)
		self.new({f: value})
	end

	def self.in_celsius(value)
		self.new({c: value})
	end


end

class Celsius < Temperature

	def initialize (value)
		super(c: value)
	end
end

class Fahrenheit < Temperature

	def initialize (value)
		super(f: value)
	end
end





