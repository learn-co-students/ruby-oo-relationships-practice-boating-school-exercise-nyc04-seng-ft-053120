class Student
  attr_reader :name 
  
  @@all = []

  def initialize(name)
    @name = name 
    @@all << self
  end

  def add_boating_test(test_name, test_status, instructor)
    BoatingTest.new(self, test_name, test_status, instructor)
  end

  def tests_taken
    BoatingTest.all.select { |test| test.student == self }
  end

  def tests_passed
    self.tests_taken.select { |test| test.status == 'passed' }
  end

  def tests_failed
    self.tests_taken.select { |test| test.status == 'failed' }
  end

  def tests_count
    count = { total: 0, passed: 0, failed: 0 }
    tests = self.tests_taken
    tests.each do |test|
      count[:total] += 1
      count[:passed] += 1 if test.status == 'passed'
      count[:failed] += 1 if test.status == 'failed'
    end
    count
  end

  def grade_percentage
    test_results = self.tests_count
    total_tests = test_results[:total]
    passed_tests = test_results[:passed]
    (passed_tests.fdiv(total_tests)) * 100
  end

  def self.find_student(name)
    self.all.find{ |student| student.name == name }
  end

  def self.all
    @@all
  end
end
