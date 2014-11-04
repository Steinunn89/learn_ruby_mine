def translate (input)
	alphabet = ('a'..'z').to_a
	vowels = %w[a e i o u]
	consonants = alphabet - vowels
	
	
	if vowels.include?(input[0])
		input = input + "ay"

	elsif consonants.include?(input[0]) && consonants.include?(input[1])
		input[2..-1] + input[0..1] + "ay"

	elsif consonants.include?(input[0])
		input[1..-1] + input[0] + "ay"
	else 
		input
	end


end
