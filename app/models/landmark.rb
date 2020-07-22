# put your Landmark model here

class Landmark

    @@all = []

    attr_accessor :name, :city

    def initialize(name, city)
        @name = name
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_city(city)
        #Find all landmarks in that city
        #Return an array of landmarks
        self.all.select do |landmark|
            landmark.city == city
        end
    end

    def trips
        #Return array of all trips taken to given landmark
        Trip.all.select do |trip|
            trip.landmark == self
        end
    end

    def tourists
        #Return array of all tourists at a given landmark
        self.trips.map do |trip|
            trip.tourist
        end
    end

end