class FundingRound

    @@all = []
    def initialize(type, startup, round, venture_capitalist, amount)
        @type = type
        @startup = startup
        @round = round
        @amount = amount
        @venture_capitalist = venture_capitalist
        @@all << self
    end

    def startup
        @startup
    end

    def venture_capitalist(round)  
        @venture_capitalist
    end

    def type
        @type
    end

    def investment
        @amount
    end

    def self.all
        @@all
    end

end
