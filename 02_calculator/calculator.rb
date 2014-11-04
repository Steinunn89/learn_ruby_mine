def add (a,b)
	total = a + b
end

def subtract (a,b)
	total = a - b
end
def sum (array)

	total = 0
	array.each do |num|
		total += num
	end
	return total
end

class Classy
	def multiply(array)
		total = 1
		array.each do |num|
			total *= num
		end
		return total
	end

	def factorial(num)

		(1..(num.zero? ? 1 : num)).inject(:*)

	end
end




