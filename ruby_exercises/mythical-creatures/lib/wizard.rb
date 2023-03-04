class Wizard
    attr_accessor :name
    def initialize(name, bearded: true)
        @name = name
        @bearded = bearded
        @rested = true
        @casts = 0
    end

    def bearded?
        @bearded
    end

    def cast
        "MAGIC MISSLE!"
        @casts += 1
        rested?
    end

    def incantation(string)
        "sudo " + string
    end

    def rested?
        if @casts >= 3
            @rested = false
        end
        @rested
    end

end