class User

    attr_accessor :name

    def initialize(name)
        puts "User#initialize called"
        @name = name
    end

    def log_in
        puts "User#log_in called"
        @logged_in = true
    end
end

class Student < User

    attr_accessor :grade

    def initialize(name, grade)
        puts "Student#initialize called"
        super(name)
        @grade = grade
    end

    def log_in
        puts "Student#log_in called"
        super
        @in_class = true
    end
end

brian = Student.new("Brian", 100)