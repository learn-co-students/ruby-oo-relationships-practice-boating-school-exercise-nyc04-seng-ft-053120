class Instructor
    attr_accessor :name
    @@all=[]
    def initialize(name)
        @name=name
        @@all<<self
    end
    
    def pass_student(student,test_name)
        BoatingTest.all.find do |bt| 
            if bt.student==student and bt.test_name==test_name
                bt.test_status="passed"
                bt
            else
                bt=BoatingTest.new(student,test_name,"passed",self)
            end
        end
    end

    def fail_student(student,test_name)
        BoatingTest.all.find do |bt| 
            if bt.student==student and bt.test_name==test_name
                bt.test_status="failed"
                bt
            else
                bt=BoatingTest.new(student,test_name,"failed",self)
            end
        end
    end

    def self.all
        @@all
    end

end
