class Dragon
    def initialize(name, color, rider)
        @name = name
        @color = color
        @rider = rider
        @hungry = true
        @hunger = 0
    end

    def name
        @name
    end

    def color
        @color
    end

    def rider
        @rider
    end

    def hungry?
        @hungry
    end

    def eat
        @hunger += 1
        if @hunger >= 3
            @hungry = false
        end
    end 
end