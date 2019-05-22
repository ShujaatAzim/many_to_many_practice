# put your Landmark model here
class Landmark

    attr_reader :name, :city

    @@all = []

    def initialize(name, city)
        @name = name
        @city = city
        @@all << self
    end

    def self.all 
        @@all
    end

    #returns an **array** of all landmarks in that city
    def self.find_by_city(city)
        self.all.select do |landmark|
            landmark.city == city
        end
    end

    #returns an **array** of all the trips taken to a given landmark
    def trips
        Trip.all.select do |trip|
            trip.landmark == self
        end
    end

    #returns an **array** of all the tourists at a given landmark
    def tourists
        self.trips.collect do |trip|
            trip.tourist
        end
    end


end