class Instructor
  attr_reader :name 

  @@all = []

  def initialize(name) 
    @name = name 
  end

  def pass_student(student, test_name)
    grade_student('passed', student, test_name)
  end

  def fail_student(student, test_name)
    grade_student('failed', student, test_name)
  end

  def find_test(student, test_name)
    BoatingTest.all.find do |test|
      test.student.name == student.name && test.name == test_name
    end
  end

  def grade_student(grade, student, test_name)
    boating_test = self.find_test(student, test_name)
    if boating_test
      boating_test.status = grade
    else
       BoatingTest.new(student, test_name, grade, self)
    end 
  end

  def self.all 
    @@all
  end
end
