class BoatingTest

    attr_accessor :student, :boating_test, :instructor, :boating_test_status

    @@all = []

    def initialize(student, boating_test, instructor, boating_test_status) 
        @student = student
        @boating_test = boating_test
        @instructor = instructor
        @boating_test_status = boating_test_status
        @@all << self
    end

    def self.all
        @@all
    end

    

end
