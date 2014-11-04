def reverser

	yield.split.map { |word| word.reverse}.join(" ")

end

def adder(num=1, &block)
  block.call + num
end

def repeater(num=1)

	num.times{yield}
end