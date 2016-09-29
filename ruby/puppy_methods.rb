class Puppy

	def  initialize
	puts "Initializing new puppy instance ..."

	end

	def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  	end

  	def roll_over
  	puts "*roll over*"

  	def dog_years(age)
	age * 7
	end

	def bark(number)
	count = 0
	until count >= number

	puts "Woof Woof!"
	count += 1
	end
end
# number.times{puts "Woof Woof!"}

	def play_dead
	puts "BANG!"
	end

end
# -----------DRIVER  CODE -------------
puppy = Puppy.new

puppy.fetch("stick")
puppy.fetch("ball")
puppy.bark(2)
puppy.play_dead
Hachi = Puppy.new

# -----------NEW TURTLE CLASS -------------

class Turtle

def initialize
puts "Initializing new turtle instance ..."
end

def hiss(number)
number.times{puts "*hiss*"}
end

def come_here
puts "*walks slowly over*"
end
end


count = 1
arr = []
#break if count == 50

until count > 50
puts "Enter Instance name:"
instance_name = gets.chomp
instance_name = Puppy.new

arr << instance_name

count += 1
end

arr.each do

instance_name.bark(3)
instance_name.play_dead
end