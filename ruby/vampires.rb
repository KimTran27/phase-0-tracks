# Screening question
puts "What's the vampire's name?"
vampire_name = gets.chomp
vampire_name = vampire_name.capitalize

# asking for vampire's age and DOB
puts "What is your age?"
vampire_age = gets.chomp

puts "What is your birth year?"
birth_year = gets.chomp.to_i

#Using the Date class
current_year = Date.today.year
if (current_year - birth_year) == vampire_age
	matching_age = true
else
	matching_age = false
end

puts "Do you like garlic bread? (y/n)"
garlic_answer = gets.chomp

if garlic_answer == "y"
	vampires_likes_garlic = true
else 
	vampires_likes_garlic = false
end

puts "Would you like to enroll in our health insurance? (y/n)"
insurance_answer = gets.chomp
if insurance_answer == "y"
	needs_insurance = true
else 
	needs_insurance = false
end

puts "If not, do you want to waive your health coverage? (y/n)"
waived_insurance = gets.chomp
if waives_insurance == "y"
	waives_insurance = true
else 
	waives_insurance = false
end

#execute code conditionally
results = String.new
if  matching_age && (vampires_likes_garlic || needs_insurance)
	results = "Probably not a vampire."
end
elsif !matching_age && 

	(!vampires_likes_garlic || waives_insurance)













