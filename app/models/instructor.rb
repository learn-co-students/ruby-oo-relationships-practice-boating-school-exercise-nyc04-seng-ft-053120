class Instructor
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
    end

    def self.all
        @@all
    end

    def find_tests(student_int)
        #iterate to find an array of students that took the test
        # binding.pry
        BoatingTest.all.find { |test| test.student == student_int}
    end

    def pass_student(student_int, test_name)
        test = find_tests(student_int)
        if test
           test.boating_test_status = "passed"
    # # iterate to find all the students names
        else
            BoatingTest.new(student_int, test_name, self , "passed")
    end
    # # see if the student name is == to the test_name being passed in
    # # if so, update the status of boating test to passed
    # # if they dont == then create a new BoatingTest instance
    end

    def fail_student(student_int, test_name)
        test = find_tests(student_int)
        if test
            test.boating_test_status = "failed"
        else
            BoatingTest.new(student_int, test_name, self , "failed")
        end
    end



Instructor#pass_student should take in a student instance and test name. If there is a BoatingTest whose name and student match the values passed in, this method should update the status of that BoatingTest to 'passed'. If there is no matching test, this method should create a test with the student, that boat test name, and the status 'passed'. Either way, it should return the BoatingTest instance.

Instructor#fail_student should take in a student instance and test name. Like #pass_student, it should try to find a matching BoatingTest and update its status to 'failed'. If it cannot find an existing BoatingTest, it should create one with the name, the matching student, and the status 'failed'.


end
