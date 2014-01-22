

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







exit


