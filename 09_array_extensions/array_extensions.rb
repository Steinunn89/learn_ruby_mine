class Array
	def sum
		total = 0
		self.each {|x| total += x}
		return total
	end
	def square
		squared_array = []

		self.each do |x| 
			squared_array << x * x
		end

		return squared_array
	end
	def square!
		self.map! do |x| 
			 x *= x
		end
	end
end
