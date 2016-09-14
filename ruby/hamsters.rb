# asking for hamster's name
puts "What's the hamster's name?"
name = gets.chomp
puts "Hi,#{name}!"

#asking for user's volume tolerance
puts "What's the hamster's volume level, from 1-10?"
volume = gets.chomp
puts "Hamster's volume level is #{volume}."

#Fur color preference
puts "What's it fur color?"
color = gets.chomp
puts "#{color}!"

#Whether the hamster is a good candidate for adoption
puts "Is the hamster a good candidate for adoption? (y/n)"
answer = gets.chomp

if answer == "y"
	puts "Hamster is a good candidate."
else 
	puts "Hamster is not a good candiate for adoption."
end

#Estimate age
puts "What's the hamster's age?"
if estimated_age = empty.to_i
	puts nil
else 
	estimated_age = age.to_i
	puts "#{estimated_age}"
end.
