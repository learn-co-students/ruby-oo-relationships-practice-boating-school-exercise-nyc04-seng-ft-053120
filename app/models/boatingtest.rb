class BoatingTest

    attr_accessor :student, :boat, :instructor, :status

   @@all = []

    def initialize(student, boat, instructor, status) 
        @student = student
        @boat = boat
        @instructor = instructor
        @status = status
        @@all << self
    end

    def self.all
        @@all
    end

end
