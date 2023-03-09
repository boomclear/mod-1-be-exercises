class Direwolf
    attr_accessor :name, :home, :size, :starks_to_protect
    def initialize(name, home = "Beyond the Wall", size = "Massive")
        @name = name
        @home = home
        @size = size
        @starks_to_protect = []
        @hunts_white_walkers = true
    end

    def protects(stark)
        if @starks_to_protect.count < 2 && stark.location == @home
            @starks_to_protect.push(stark)
            stark.protect
            @hunts_white_walkers = false
        else
            'no'
        end
    end

    def leaves(stark)
        stark.unprotect
        @starks_to_protect.delete(stark)
        stark
    end

    def hunts_white_walkers?
        @hunts_white_walkers
    end

end

class Stark
    attr_accessor :name, :location
    def initialize(name, location = 'Winterfell')
        @name = name
        @location = location
        @safe = false
    end

    def protect
        @safe = true
    end

    def unprotect
        @safe = false
    end

    def safe?
        @safe
    end

    def house_words
        "Winter is Coming"
    end
end