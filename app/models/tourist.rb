# put your Tourist model here
class Tourist

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all 
    end

    def self.find_by_name(name)
        # Given a string of a name, 
        # return the first whose name matches
        self.all.find do |tourist|
            tourist.name == name
        end
    end

    def trips
        #Returns array of all trips taken by tourist
        Trip.all.select do |trip|
            trip.tourist == self
        end
    end

    def landmarks
        #Returns array of all landmarks for tourist
        self.trips.map do |trip|
            trip.landmark
        end
    end

    def visit_landmark(landmark)
        #Create new trip for that tourist to given landmark
        Trip.new(self, landmark)
    end

    def never_visited
        #Find all landmarks that tourist has never traveled to
        all_landmarks = Landmark.all.map do |landmark|
            landmark
        end
        self_landmarks = self.landmarks
        (all_landmarks-self_landmarks) | (self_landmarks-all_landmarks)
    end
end