class Santa
	attr_reader :ethnicity 
	attr_accessor :age, :gender #things you can update

	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", 
		"Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
		puts "Initializing Santa instance ..."
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!"
	end

	def status
		puts "#{@gender} and #{@ethnicity}."
	end

	def celebrate_birthday
		@age += 1
	end

	#setter method to make gender writable
	def gender=(new_gender)
		@gender = new_gender
	end

	def get_mad_at(reindeer)
		@reindeer_ranking.delete(reindeer)
		@reindeer_ranking << reindeer
		puts "#{reindeer} is now ranked last on this list."
	end

	#def age
		#age = age.to_i
		#@age = age
		#put "#{age}"
		#@age
	#end

	def ethinicity
		@ethinicity
	end

end

#initialize new Santa
santa = Santa.new("male", "white")

#test Santa methods
santa.speak 
santa.eat_milk_and_cookies("vanilla")
santa.status
santa.age = 21


santa_arr = []
gender = ["agender", "bigender" "gender fluid", "male", "female", "N/A"]
ethnicities = ["latino", "native_american", "asian", "white", "african_american", "N/A"]

gender.length.times do |i|
	santa_arr << Santa.new(gender[i],ethnicities[i])
end

#test getter and setter methods.
puts "santa's current age is #{santa.age.to_s}"
santa.celebrate_birthday
puts "santa just celebrated a birthday. They are now #{santa.age.to_s}"
santa.get_mad_at("Rudolph")
santa.gender = "female"
puts "santa's current info:"
puts "Gender: #{santa.gender}" 
puts "Ethnicity: #{santa.ethnicity}"

#create a bunch of new santas
i = 0 
while i < 100
	new_santa = Santa.new(gender.sample, ethnicities.sample)
	random_age = Random.new 
	new_santa.age = random_age.rand(0..140)
	puts "This Santa is #{new_santa.gender}, #{new_santa.age} years old, and #{new_santa.ethnicity}."
	i += 1
end
