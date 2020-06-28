class BoatingTest
    attr_reader :student, :test, :instructor
    attr_accessor :status
    @@all = []

    def initialize(student, test, status, instructor)
        @student = student
        @test = test
        @status = status
        @instructor = instructor
        save
    end

    def save
        self.class.all << self
    end

    def self.all
        @@all
    end
end
