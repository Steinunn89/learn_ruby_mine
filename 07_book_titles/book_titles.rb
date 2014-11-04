class Book

	attr_accessor :title

	def title 

		input = @title.split

		if input[1]
			input_1 = input[0].capitalize!
			input_2 = input[1..-1].each{|word| word.capitalize! unless (["the", "and", "a", "an", "in", "of", "over"].include?(word))}.join (" ")
			[input_1, input_2].join(" ")
		else
			input[0].capitalize!
		end
	end

end


