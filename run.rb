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

    def log_in
        puts "Student#log_in called"
        super
        @in_class = true
    end
end

brian = Student.new
brian.log_in