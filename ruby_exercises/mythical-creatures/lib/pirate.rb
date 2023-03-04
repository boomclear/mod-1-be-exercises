class Pirate
    attr_accessor :name, :job, :booty
    def initialize(name, job = "Scallywag")
        @name = name
        @job = job
        @cursed = false
        @acts = 0
        @booty = 0
        cursed?
    end

    def commit_heinous_act
        @acts += 1
        cursed?
    end

    def cursed?
        if @acts >= 3
            @cursed = true
        end
        @cursed
    end

    def rob_a_ship
        @booty += 100
    end
end