

def echo(input)
	"#{input}"
end

def shout(input)
	"#{input}".upcase
end
def repeat(input, n=2)

  ([input] * n).join ' '
end

def start_of_word (input, n)
	input[0..n-1]
end

def first_word (input)
	splitted_input = input.split(" ")
	word = splitted_input[0]
end

def titleize (input)

	input = input.split

	if input[1]
		input_1 = input[0].capitalize
		input_2 = input[1..-1].each{|word| word.capitalize! unless (["the", "and", "over"].include?(word))}.join (" ")
		[input_1, input_2].join(" ")
	else
		input[0].capitalize!
	end
end


