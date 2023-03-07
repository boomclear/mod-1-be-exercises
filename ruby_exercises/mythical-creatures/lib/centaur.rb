class Centaur
    attr_accessor :name, :breed
    def initialize(name, breed)
        @name = name
        @breed = breed
        @cranky = false
        @standing = true
        @acts = 0
    end

    def shoot
        if cranky? || @standing == false
            "NO!"
        else
            @acts += 1
            is_cranky?
            "Twang!!!"
        end
    end

    def run
        if cranky? || @standing == false
            "NO!"
        else
            @acts += 1
            is_cranky?
            'Clop clop clop clop!'
        end
    end

    def is_cranky?
        if @acts >= 3
            @cranky = true
        end
    end

    def cranky?
        @cranky
    end

    def lay_down
        @standing = false
    end

    def stand_up
        @standing = true
    end

    def sleep
        if laying?
            @cranky = false  
            @acts = 0
            'ZZZ'
        else
            'NO!'
        end
    end

    def laying?
        if @standing == true
            false
        else
            true
        end
    end

    def standing?
        @standing
    end
end