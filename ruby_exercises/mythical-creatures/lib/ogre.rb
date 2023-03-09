class Human
    attr_accessor :name, :encounter_counter, :notices_ogre
    def initialize(name = "Jane")
        @name = name
        @notices_ogre = false
        @knocked_out = false
        @encounter_counter = 0
    end

    def encounter
        @encounter_counter += 1
        if @encounter_counter == 0
            @notices_ogre = false
        elsif
            @encounter_counter % 3 == 0
            @notices_ogre = true
        else
            @notices_ogre = false
        end
    end

    def notices_ogre?
       @notices_ogre
    end

    def knocked_out
        @knocked_out = true
    end

    def knocked_out?
        @knocked_out
    end

    def wake_up
        @knocked_out = false
    end

end

class Ogre
    attr_accessor :name, :home, :swings, :encounter_counter
    def initialize(name, home = "Swamp")
        @name = name
        @home = home
        @swings = 0
        @encounter_counter = 0
    end

    def encounter(human)
        @encounter_counter += 1
        human.encounter
        if human.notices_ogre && @swings.odd?
            human.knocked_out
            swing_at(human)
        elsif human.notices_ogre
            swing_at(human)
        end
    end

    def apologize(human)
        human.wake_up
    end

    def swing_at(human)
        @swings += 1
    end
end


