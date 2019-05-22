# put your Tourist model here
class Tourist

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    # should return **all** of the `Tourist` instances
    def self.all 
        @@all
    end

    # given a string of a name, returns the **first tourist** 
    # whose name matches
    def self.find_by_name(name)
        @@all.find do |tourist|
            tourist.name == name
        end
    end

    #returns an **array** of all the trips taken by the given Tourist
    def trips
        Trip.all.select do |trip|
            trip.tourist == self
        end
    end

    #returns an **array** of all the landmarks for the given Tourist
    def landmarks
        self.trips.collect do |trip|
            trip.landmark
        end
    end

    # Tourist#visit_landmark(landmark)` should create a new trip for 
    # that tourist to the given landmark
    def visit_landmark(landmark)
        Trip.new(self, landmark)
    end


end

