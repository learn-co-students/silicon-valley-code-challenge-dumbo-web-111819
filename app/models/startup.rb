class Startup
    attr_accessor :name, :domain
    attr_reader :founder
    @@all = []
    def initialize(name, founder, domain)
        @name = name
        @founder = founder
        @domain = domain
        
        self.class.all << self
    end

    def self.all
        @@all
    end

    def name
        @name
    end

    def pivot(domain,name)
        @domain = domain
        @name = name
    end

    def self.find_by_founder(founder_name) 
        self.all.find{|startup_instance| startup_instance.founder == founder_name}
    end

    def self.domains
        self.all.map{|startup_instance| startup_instance.domain}
    end

    def sign_contract(venture_capitalist,type_of_investment,investment)
        FundingRound.new(self,venture_capitalist,investment,type_of_investment)
    end

    def funding_rounds 
        FundingRound.all.select{|fr_instance| fr_instance.startup == self}
    end

    def num_funding_rounds
        self.funding_rounds.count
    end

    def total_funds
        total = 0
        self.funding_rounds.each {|fr_instance| total += fr_instance.investment}
        total
    end

    def investors
        self.funding_rounds.map{|fr_instance| fr_instance.venture_capitalist}
    end

    def big_investors
        self.investors.select{|vc_instance| vc_instance.total_worth > 1000000}
    end
end

