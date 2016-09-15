# asking for hamster's name
puts "What's the hamster's name?"
hamster_name = gets.chomp
hamster_name = hamster_name.capitalize
puts "Hi,#{hamster_name}!"

#asking for user's volume tolerance
puts "What's the hamster's volume level, from 1-10?"
volume = gets.chomp
volume = volume.to_i
if volume < 5
	volume = "silent"
elsif volume >= 5
	volume = "noisy"
end
puts "Hamster's volume level is #{volume}."

#Fur color preference
puts "What's the fur color?"
color = gets.chomp
puts "#{color}!"

#Whether the hamster is a good candidate for adoption
puts "Is the hamster a good candidate for adoption? (y/n)"
answer = gets.chomp

if answer == "y"
	puts "Good candidate."
else answer == "n"
	puts "Not a good candidate."
end

#Estimate age
puts "What is the hamster's estimated age?"
	estimated_age = gets.chomp
	if estimated_age ==""
		estimated_age = "N/A"
	else
		estimated_age = estimated_age.to_f
end

puts "-------------------------"
puts "Data Summary:"
puts "Name: #{hamster_name}"
puts "Noise Level: #{volume}"
puts "Color: #{color}"
puts "Suitability: #{answer}"
puts "Age: #{estimated_age}"
puts "-------------------------"
