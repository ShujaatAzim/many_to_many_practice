require_relative '../config/environment.rb'

# create your variables and/or write any tests here

tourist1 = Tourist.new("Nick")
tourist2 = Tourist.new("Shu")
landmark1 = Landmark.new("Washington Monument", "DC")
landmark2 = Landmark.new("Golden Gate Bridge", "San Francisco")
trip1 = Trip.new(tourist1, landmark1)
trip2 = Trip.new(tourist2, landmark2)

puts "\n"
puts "Initializes tourist, landmark, and trip Objects:"
puts Tourist.all.include?(tourist1)
puts Landmark.all.include?(landmark1)
puts Trip.all.include?(trip1)
puts "\n"
puts "Tourist.find_by_name('Nick') should return tourist1 obj"
puts Tourist.find_by_name("Nick") == tourist1
puts "\n"
puts "tourist1.trips should return trip1 in an array"
puts tourist1.trips.include?(trip1)
puts "\n"
puts "tourist1.landmarks should return an array of landmarks that tourist1 has been to"
puts tourist1.landmarks.include?(landmark1)
puts "\n"
puts "Landmark.find_by_city(DC) should return landmarks in DC"
puts Landmark.find_by_city("DC").include?(landmark1)
puts "\n"
puts "landmark1.trips should return an array of all trips to landmark"
puts landmark1.trips.include?(trip1)
puts "\n"
puts "landmark1.tourists should return an array of all tourists at landmark"
puts landmark1.tourists.include?(tourist1)
puts "\n"



#binding.pry
