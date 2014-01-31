require 'pry'

class UI

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
end

class Sentence_Template
  attr_accessor :template
  def initialize (template_string)
    @template = template_string
  end
  def insert (parts_of_speech)
    sentence = @template
    parts_of_speech.each do |part, word|
      regex = "\(#{part.to_s}\)"
      sentence.sub!(regex, word)
    end
    sentence
  end
end


    ui = UI.new

    input_words = ui.prompt


    templates = Array.new

    templates[0] = Sentence_Template.new("The (adjective) (noun) suddenly and (adverb) had to (verb) the (object).") 
    templates[1] = Sentence_Template.new("The (noun) (verb).")
    # templates[0] = "The #{output[:adjective]} #{output[:noun]} suddenly and #{output[:adverb]} had to #{output[:verb]} the #{output[:object]}."
    # templates[1] = "Your #{output[:noun]} is very #{output[:adjective]}."
    # templates[2] = "While in the #{output[:noun]}, I saw #{output[:object]} #{output[:verb]}."
  templates.each do |sentence_template|
    puts sentence_template.template
    puts sentence_template.insert input_words
  end

# puts templates