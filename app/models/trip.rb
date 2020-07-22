# put your Trip model here

class Trip

    @@all = []

    attr_accessor :tourist, :landmark
    
    def initialize(tourist, landmark)
        @tourist = tourist
        @landmark = landmark
        @@all << self
    end

    def self.all
        @@all
    end
end