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
        Landmark.all.select do |landmark|
            landmark.city == city
        end
    end

    # For both this one ^ and the similar one in tourist, we can use self in place
    # of the class name (line 20) because this is a class method, and therefore is
    # one level higher and refers to the class. @@all is bad convention even if it works
    # because the self.all method that returns @@all could have some custom code in it,
    # and could therefore not actually return all.

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