# code here!
class School
    attr_reader :schoolName
    def initialize(schoolName)
        @schoolName = schoolName
        @roster = {}
    end
    def roster
        @roster
    end
    def add_student(studName, grades)
        if @roster[grades] != nil
            @roster[grades] << studName
        else
            @roster[grades] = [studName]
        end
        @roster
    end
    def grade(grades)
        @roster[grades]
    end
    def sort
        @roster.each do |year, names|
            names.sort!
        end
    end
end
