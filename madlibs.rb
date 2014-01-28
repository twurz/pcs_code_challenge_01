require 'pry'

def prompt

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

	return words
end




output = prompt

binding.pry #execution will drop into pry at this line

class Sentence_template
end

templates = Array.new

	templates[0] = "The #{output[:adjective]} #{output[:noun]} suddenly and #{output[:adverb]} had to #{output[:verb]} the #{output[:object]}."
	#binding.pry
	templates[1] = "Your #{output[:noun]} is very #{output[:adjective]}."
	#binding.pry
	templates[2] = "While in the #{output[:noun]}, I saw #{output[:object]} #{output[:verb]}."
	#binding.pry

puts templates



exit


