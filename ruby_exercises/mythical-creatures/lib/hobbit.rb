 class Hobbit
    attr_accessor :name, :disposition, :age 
    def initialize(name, disposition = "homebody", age = 0)
        @name = name
        @disposition = disposition
        @age = age
        @adult = false
        @old = false
        @child = false
        @has_ring = false
        @is_short = true

        if @name == "Frodo"
            @has_ring = true
        end

        maturity
    end

    def celebrate_birthday
        @age += 1
        maturity
    end

    def maturity
        if age <= 32
            @child = true
            @old = false
            @adult = false
        elsif age >=101
            @old = true
            @adult = true
            @child = false
        else
            @adult = true
            @old = false
            @chlid = false
        end
    end  

    def adult?
        @adult
    end

    def old?
        @old
    end

    def child?
        @child
    end

    def has_ring?
        @has_ring
    end

    def is_short?
        @is_short
    end

end