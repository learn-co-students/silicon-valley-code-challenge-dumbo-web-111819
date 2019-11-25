class Startup
    attr_reader

    @@all = []
    def initialize(name, founder, domain)
        @name = name
        @founder = founder
        @domain = domain
        @@all << self
    end

    def name
        @name
    end

    def founder
        @founder
    end

    def domain
        @domain
    end

    def pivot(name, domain)
        @name = name
        @domain = domain        
    end

    def self.all
        @@all
    end

    def self.find_by_founder(founders_name)
        Startup.all.find do |startup_instance|
            startup_instance.founder == founders_name
        end

       # binding.pry
    end

    def self.domains
        Startup.all.domain
    end

end

