class Student
  attr_reader :first_name, :last_name
  @@all = []
  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(test_name, test_status, instructor)
    BoatingTest.new(self, test_name, test_status, instructor)
  end

  def self.find_student(first_name)
    self.all.find { |student| student.first_name == first_name }
  end

  def find_all_tests
    BoatingTest.all.select{|test| test.student.first_name == self.first_name }
  end

  def grade_percentage
    student_tests = self.find_all_tests
    tests = student_tests.length.to_f
    passed = student_tests.select{|test| test.test_status == 'passed'}.length.to_f
    ( passed / tests ) * 100
  end
end