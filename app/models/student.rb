class Student
    attr_reader :first_name

    @@all = []

    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(boating_test, instructor, boating_test_status)
        BoatingTest.new(self, boating_test, instructor, boating_test_status)
    end

    def self.find_student(name)
        self.all.find { |student| student.self.first_name == name } 
    end

    def tests_taken
        BoatingTest.all.select{|test| self.first_name == test.student.first_name}
        # find out how many tests the student took
          # go to the BoatingTest
          # use select with self to get all the tests of the student
    end
    # def grade_percentage
    #     tests = self.tests_taken
    #     binding.pry
    #     # find out whether the tests are pass or fail
    #       # iterate over the test array and return the status
    #     statuses = tests.map{|test| test.boating_test_status}
    #     # statuses_short = tests.map(&:boating_test_status)
    #     # return the float (decimal)
    #       # count the pass and divide it by the number of all the tests
    #     pass_number = statuses.select{|status| status == "passed"}.count.to_f / statuses.count.to_f
    # end

    def grade_percentage
        tests = self.tests_taken 
        statuses = tests.map{|test| test.boating_test_status}
        fail_number = statuses.select{|status| status == "failed"}.count.to_f / statuses.count.to_f
    end










end


# Student.find_student will take in a first name and output the student (Object) with that name
# Student#grade_percentage should return the percentage of tests that the student has passed, a Float (so if a student has passed 3 / 9 tests that they've taken, this method should return the Float 33.33)
