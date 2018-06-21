class Coffee
  require_relative "./coffee_ratio.rb"
  attr_accessor :brew_method, :temperature, :ratio, :grind, :water, :grams, :timing

    def initialize(brew_method: "No Brew",temperature: "No Temp",
      ratio: "No Ratio", grind: "No Grind", water: "No Water",
      grams: "No Grams", timing: "No Timing")
         @brew_method = brew_method
         @temperature = temperature
         @@ratio = ratio
         @grind = grind
         @water = water
         @grams = grams
         @timing = timing
    end
    #def ratio
     # water / grind.to_f
  #end 
end

default     =  [brew_method: "V61",temperature: 92, ratio: 2, grind: 14, water: 250, grams: 15, timing: 300]
v60_recipe  =  [brew_method: "V60",temperature: 92, ratio: "N/A", grind: 14, water: 250, grams: 16, timing: "3:30"]

cup1 = Coffee.new
    p cup1
cup2 = Coffee.new(*default)
    p cup2
cup_v = Coffee.new(*v60_recipe)
    p [cup_v.brew_method, cup_v.grind, cup_v.temperature]
    p "The Cup V is #{cup_v.brew_method}, Grind - #{cup_v.grind}, and temp #{cup_v.temperature}"
cup_only = Coffee.new(ratio: 25, grams:26)

p Coffee_ratio.cratio(23)
p "This is git"
p "OK last test"