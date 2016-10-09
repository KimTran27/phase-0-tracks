# Virus Predictor, assignments focusing on hashes.

# I worked on this challenge [by myself, with: Arlene ].
# We spent [#2] hours on this challenge.

# EXPLANATION OF require_relative
require_relative 'state_data' 
class VirusPredictor
  #initialize instance variables, with state_of_origin, population_density, population as it's parameters.
  def initialize(state_of_origin, population_density, population) #only list out parameters in initialize
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  def virus_effects #run speed_of_spread and predicted_death.
    #predicted_deaths(@population_density, @population, @state)
    #speed_of_spread(@population_density, @state)
    #not the same variable, compared to @population_density in line 34
    predicted_deaths
    speed_of_spread
  end

  private #private is protected, and you can't use it outside of the class
  #you can't move it above virus_effects because then it will no longer be a public method.

  def predicted_deaths
    # predicted deaths is solely based on population density
    #.floor is when you're comparing 2 things 1.2.floor will give you 1.
    #returns the largest integer float. rounding down to the "floor"
    mutliplier = 0
    if @population_density >= 200
      mutliplier = 0.4
    elsif @population_density >= 150
      mutliplier = 0.3
    elsif @population_density >= 100
      mutliplier = 0.2
    elsif @population_density >= 50
      mutliplier = 0.1
    else
      mutliplier = 0.05
    end
    number_of_deaths = (@population * mutliplier).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end


  # get the speed of spread based on the population density
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end
    

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
# initialize VirusPredictor for each state
# State_data has constant variable scope, in the same code as your driver code... but since it's a constant, it has a wider scope.


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

#STATE_DATA.each do |state, population_info| #since we're using .each method, we're putting a key that we assign a key to, and a key that it assigns the value to the second key you put in.
  #state is the key, and population info is the value. the each loop will go through each state
#  state_instance = VirusPredictor.new(state, population_info[:population_density],population_info[:population])
#  state_instance.virus_effects #must be inside the scope, for it to run.
#end
#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
# One of keys is string ("Alabama ") and the other key is written in symbol [:population_density].

# What does require_relative do? How is it different from require?
# require_relative is complement of require and it allows you to load a file that is relative eto the file containing that statement.
# require relative, your file will be searched in the current folder, that you call out.
# require doesn't have that context, and will just look in that parent director.

# What are some ways to iterate through a hash?
# .each, .map and loop statement like while. I think the most efficient one to use for this problem is .each.

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# There are redundant variables parameteres for the method, but I didn't realize it is unnecessary at the end.

# What concept did you most solidify in this challenge?
# I could solidify the concept of DRY the most in this challenge.