class VentureCapitalist

    @@all = []
    def initialize(name, worth)
        @name = name
        @worth = worth
        @@all << self
    end

    def name
        @name
    end

    def total_worth
        @worth
    end

    def self.all
        @@all
    end

    def self.tres_commas_club
        VentureCapitalist.all.select do |ventureCapitalist_instance|
            ventureCapitalist_instance.total_worth > 1_000_000
        end
    end


end
