def madlibs

	words = Hash.new

	puts "Please enter a noun."
	words[:noun] = gets.chomp

	puts "Please enter an adjective."
	words[:adjective] = gets.chomp

	puts "Please enter a Verb."
	words[:verb] = gets.chomp

	puts "Please enter an Adverb."
	words[:adverb] = gets.chomp

	puts "Please enter an Object."
	words[:object] = gets.chomp

	puts words.keys.inspect
	puts words.values.inspect

end

madlibs

def sentence1(words)

	template = "The #{words[:adjective]} (noun) suddenly and (adverb) had to (verb) the (object)."

	puts template

end

sentence1(words)





exit


