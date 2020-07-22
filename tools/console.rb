require_relative '../config/environment.rb'

# create your variables and/or write any tests here

washington_monument = Landmark.new("Washington Monument", "D.C.")
eiffel_tower = Landmark.new("Eiffel Tower", "Paris")
notre_dame = Landmark.new("Notre Dame", "Paris")
big_ben = Landmark.new("Big Ben", "London")

christina = Tourist.new("Christina")
christina2 = Tourist.new("Christina")
allen = Tourist.new("Allen")
bob = Tourist.new("Bob")

christina_trip1 = Trip.new(christina, washington_monument)
christina_trip2 = Trip.new(christina, eiffel_tower)
allen_trip1 = Trip.new(allen, eiffel_tower)
bob_trip1 = Trip.new(bob, notre_dame)
#bob_trip2 = Trip.new(bob, big_ben)

Landmark.find_by_city("Paris")

# puts "All trips to the Eiffel Tower:"
# print eiffel_tower.trips
# puts "\n"

# puts "All tourists at the Eiffel Tower:"
# print eiffel_tower.tourists
# puts "\n"

Tourist.find_by_name("Christina")

# puts "All trips taken by Christina:"
# print christina.trips

# puts "All landmarks visited by Christina:"
# print christina.landmarks

christina.visit_landmark(notre_dame)
christina.trips

print christina.never_visited

#binding.pry
