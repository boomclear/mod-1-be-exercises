class Person
    attr_accessor :stoned, :name
    def initialize(name)
        @name = name
        @stoned = false
    end

    def stoned?
        @stoned
    end
end

class Medusa
    attr_accessor :statues, :name
    def initialize(name)
        @name = name
        @statues = []
    end

    def stare(person)
        if @statues.count >= 3
            @statues.shift.stoned = false
            @statues.push(person)
        else
            @statues.push(person)
        end
        person.stoned = true
    end
end