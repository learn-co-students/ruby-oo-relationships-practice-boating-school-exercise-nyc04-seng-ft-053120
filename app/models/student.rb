class Student
    attr_reader :first_name
    @@all = []

    def initialize(first_name)
        @first_name = first_name
        save
    end

    def save
        self.class.all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(name, status, instructor)
        BoatingTest.new(self, name, status, instructor)
    end

    def self.find_student(first_name)
        self.all.find do |student|
            student.first_name == first_name
        end
    end

    def boatingtests
        BoatingTest.all.select do |boatingtest|
            boatingtest.student == self
        end
    end

    def total_passed
        passed = 0
        boatingtests.each do |boatingtest|
            passed += 1 if boatingtest.status == "passed"
        end
        passed.to_f
    end

    def grade_percentage
        (total_passed/boatingtests.count)*100
    end
end
