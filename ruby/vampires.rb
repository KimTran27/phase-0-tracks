#challenge 4.4 vampire questionnaire
#ask how many employees will be screened
processed = true
while processed
	puts "How many employees will be processed?"
	number_of_employees = gets.chomp.to_i
		if number_of_employees > 0
			processed = false
		else 
			puts "Enter a valid number."
		end
end
counter = 0
until counter == number_of_employees

	# Screening questions
	puts "What is your name?"
	vampire_name = gets.chomp
	vampire_name = vampire_name.capitalize

	# asking for vampire's age and DOB
	puts "What is your age?"
	vampire_age = gets.chomp

	puts "What is your birth year?"
	birth_year = gets.chomp.to_i

#Using the Date class
current_year = Time.now.year
if (current_year - birth_year) == vampire_age
	matching_age = true
else
	matching_age = false
end

puts "Our company cafeterian serves garlic break. 
		Should we order some for you? (y/n)"
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

  #add list for allergies
  puts "Do you have any allergies to list?"
  allergies = gets.chomp.downcase
  if allergies == "yes"
    add_allergies = true
    while add_allergies 
      puts "List allergies one by one.  Enter 'done' when finished."
      allergy = gets.chomp.downcase
      if allergy == "sunshine"
        results = "Probably a vampire."
        add_allergies = false
        sunshine = true
      elsif allergy == "done"
        add_allergies = false
      end
    end
  end

#execute code conditionally
if  matching_age && vampires_likes_garlic && needs_insurance
	results = "Probably not a vampire."

	elsif  !vampires_likes_garlic && (matching_age || needs_insurance)
	results = "Probably a vampire."
end

if
   	   !matching_age && !needs_insurance && !vampires_likes_garlic
	results = "Almost certainly a vampire."

end

if (vampire_name == "Drake cula") || (vampire_name == "Tu fang")
	results = "Definitely a vampire."
end

if results == ""
      results = "Results inconclusive."
end 

puts results
counter += 1
end

puts "Actually, never mind! What do these questions have to do with anything? 
Let's all be friends."







