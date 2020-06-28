class Instructor
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        save
    end

    def save
        self.class.all << self
    end

    def self.all
        @@all
    end

    def new_test(student, test, status)
        BoatingTest.new(student, test, status, self)
    end

    def find_test(student, test)
        BoatingTest.all.find do |boatingtest|
            boatingtest.student == student && boatingtest.test == test
        end
    end

    def pass_student(student, test)
        boatingtest = find_test(student, test)
        boatingtest == nil ? new_test(student, test, 'passed') : boatingtest.status = 'passed'
    end

    def fail_student(student, test)
        boatingtest = find_test(student, test)
        boatingtest == nil ? new_test(student, test, 'failed') : boatingtest.status = 'failed'
    end
end
