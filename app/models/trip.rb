# put your Trip model here
class Trip

    # returns arrays of trips and landmarks respectively
    attr_reader :tourist, :landmark

    @@all = []

    def initialize(tourist, landmark)
        @tourist = tourist
        @landmark = landmark
        @@all << self
    end
    
    def self.all
        @@all
    end


end
