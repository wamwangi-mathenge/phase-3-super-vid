class User

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def log_in
        puts "User#log_in called"
        @logged_in = true
    end
end

class Student < User

    attr_accessor :name, :grade

    def initialize(name, grade)
        @name = name
        @grade = grade
    end

    def log_in
        puts "Student#log_in called"
        super
        @in_class = true
    end
end

brian = Student.new
brian.log_in