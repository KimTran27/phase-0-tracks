module Shout
	def self.yell_angrily(words)
		words + "!!!" + " :("
	end
	def self.yell_happily(words)
		words + "!!!" + " :D"
	end

	def yell_angrily(words)
		words.upcase + "!!! :("
	end

	def yell_happily(words)
		words.downcase + "!!! :)"
	end

end

Shout.yell_angrily("I'm angry.") 
Shout.yell_happily("I'm super happy.") 


#New Class
class Puppy
	include Shout
end

class Turtle
	include Shout
end

puppy = Puppy.new 
p puppy.yell_angrily("I'm hungry, bark.")

turtle = Turtle.new
p turtle.yell_happily("Hissy Hiss.")
