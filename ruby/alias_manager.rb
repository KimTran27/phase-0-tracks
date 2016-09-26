=begin
pseudocode
write a method that takes a spy's real name (ie: "James Bond")	
prompt: create fake names
1. Swapping the first and last name.
2. Changing all of the vowels (a, e, i, o, or u) 
to the next vowel in 'aeiou', and all of the 
consonants (everything else besides the vowels) 
to the next consonant in the alphabet. So 'a' 
would become 'e', 'u' would become 'a', and 'd' would become 'f'.	
=end
loop do
puts "Enter agent's first and last name:"
agent_full_name = gets.chomp.downcase
reverse_full = agent_full_name.split(" ").reverse.join(" ")
full_name = reverse_full.chars.to_a

symbol = [" "]
vowels = ["a", "e", "i", "o", "u"]
consonant = [ "b", "c", "d", "f", "g", "h", "j", 
  			"k", "l", "m", "n", "p", "q", "r", "s", 
  			"t", "v", "w", "x", "y", "z"]
#running each condition for each character/symbol
new_full = full_name.map do |char|
	if vowels.include?(char)
		vowels.rotate(1)[vowels.index(char)]

	elsif consonant.include?(char)
		consonant.rotate(1)[consonant.index(char)]

	elsif symbol.include?(char)
		symbol.rotate(1)[symbol.index(char)]
	end

end

code_name = []
#run loop until user inputs 'quit'
code_name << new_full.join
p code_name
p "#{agent_full_name} code name is #{code_name.last}"
p "to continue press ENTER or type 'quit' to end"

break if gets.chomp == "quit"
	end

#kim tran => vsep lon true
#felicia torres => vussit gimodoe true











