class Werewolf
    attr_accessor :name, :location
    def initialize(name, location = "Earth")
        @name = name
        @location = location
        @human = true
        @wolf = false
        @hungry = false
    end

    def change!
        if @human == true
        @human = false
        @wolf = true
        @hungry = true
        else
            @human = true
            @wolf = false
            @hungry = false
        end
    end

    def consume(victim)
        if @wolf == true
            victim.status = :dead
            @hungry = false
        else
            "Not a cannibal"
        end
    end
    
    def hungry?
        @hungry
    end

    def wolf?
        @wolf
    end

    def human?
        @human
    end
end
