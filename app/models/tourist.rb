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
    # whose name matches. @@all is the same as Tourist.all
    def self.find_by_name(name)
        Tourist.all.find do |tourist|
            tourist.name == name
        end
    end

    # ^in this method, I was curious about whether we should be returning JUST the
    # name, by setting line 21 to a variable and then returning variable.name. However,
    # in general, we want to be able to interact with the entire OBJECT as much as 
    # possible, since they are an actual **TOURIST** and not just a limited String,
    # as a name would be. For example, if we used find_by_name later on, we wouldn't
    # be able to do much with it because a string can't have methods tacked on to it.



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

