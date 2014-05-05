# U2.W5: Virus Predictor

# I worked on this challenge [by myself].

# EXPLANATION OF program
# Class VirusPredictor takes 5 parameters. They are called in driver codes, and
# passed values in hash STATE_DATA. A calculation is made based on the passed in data
# and output is the number of people who will die from virus outbreak 

# EXPLANATION OF require_relative
# require_relative requires that a ruby file called state_data' exists. It can then access the
# data in that file

# EXPLANATION OF state_data file
# The file state_data has one object in it, a hash named STATE_DATA. STATE_DATA has keys that are 
# strings, and values that are hashes. These hashes that are values are written in a different notation
# than the encapsulating hash.

require_relative 'state_data'

class VirusPredictor

# method initialize overwrites default constructor of initialize when VirusPredictor object is created. 5
# parameters are set to instance variables for use throughout rest of class
  def initialize(state_of_origin, population_density, population, region, regional_spread)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end

# method virus_effects is called on a VirusPredictor object. Calls to private methods are made
  def virus_effects  
    predicted_deaths()
    speed_of_spread()
  end

  private  #what is this?  what happens if it were cut and pasted above the virus_effects method. All methods
  # below private for remainder of document can only be called from inside the class. For example if we have a
  # VirusPredictor object named temp, temp#predicted_deaths will not work because predicted_deaths is private.
  
  # predicted_deaths sets variable number_of_deaths to a calculation and prints it out along with state  
  
  def predicted_deaths
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else 
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # speed_of_spread sets variable speed to a calculation and prinst out that variable
  def speed_of_spread #in months    
    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else 
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

# for 1..STATE_DATA.length
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population], STATE_DATA["Alabama"][:region], STATE_DATA["Alabama"][:regional_spread]) 
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population], STATE_DATA["New Jersey"][:region], STATE_DATA["New Jersey"][:regional_spread]) 
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population], STATE_DATA["California"][:region], STATE_DATA["California"][:regional_spread]) 
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population], STATE_DATA["Alaska"][:region], STATE_DATA["Alaska"][:regional_spread]) 
alaska.virus_effects