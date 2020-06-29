require 'pry'
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

    def add_boating_test
        Boatingtest.new(student, boat, status, instructor)
    end

    def self.find_student(name)
        binding.pry
        Student.all.find do |student_object| 
        student_object.first_name == name
        end
    end

end
