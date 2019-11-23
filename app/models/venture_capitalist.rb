class VentureCapitalist
    @@all = []
    attr_accessor :name, :total_worth
    def initialize(name,total_worth)
        @name = name
        @total_worth = total_worth
        self.class.all << self
    end

    def self.all
        @@all
    end

    def self.tres_commas_club
        self.all.select{|vc_instance| vc_instance.total_worth > 1_000_000}
    end

    def offer_contract(startup,type_of_investment,investment)
        FundingRound.new(startup,self,investment,type_of_investment)
    end

    def funding_rounds
        FundingRound.all.select{|fr_instance| fr_instance.venture_capitalist == self}
    end
    
    def portfolio
        startups_funded = self.funding_rounds.map{|fr_instance| fr_instance.startup}
        startups_funded.uniq
    end

    def biggest_investment
        self.funding_rounds.max_by{|fr_instance| fr_instance.investment}
        
    end

    def invested(a_domain)
        total = 0
        fr_domain = self.funding_rounds.select{|fr_instance| fr_instance.startup.domain == a_domain}
        fr_domain.each{|fr_instance| total += fr_instance.investment}
        total
    end

end

