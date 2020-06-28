class Student
    attr_accessor :first_name
    @@all=[]
    def initialize(first_name)
        @first_name=first_name
        @@all<<self
    end
    def add_boating_test(test_name,test_status,instructor)
     boating_test=BoatingTest.new(self,test_name,test_status,instructor)
    end
    
    def grade_percentage
        total=BoatingTest.all.select {|bt| bt.student.first_name==self.first_name}
        passed=BoatingTest.all.select {|bt| bt.student.first_name==self.first_name and bt.test_status=="passed"}
        percentage=((passed.length.to_f)/(total.length.to_f))*100
    end
    
    def self.find_student(first_name)
        Student.all.find {|student| student.first_name==first_name}
    end
    def self.all
        @@all
    end


end
