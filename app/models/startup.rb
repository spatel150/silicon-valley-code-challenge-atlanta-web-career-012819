class Startup

    @@all = []

    attr_reader :founder, :domain
    attr_accessor :name

    def initialize(name, founder, domain)
        @name = name
        @founder = founder
        @domain = domain
        @@all << self
    end 

    def self.all
        @@all
    end 

    def self.find_by_founder(founder)
        @@all.find {|fr| fr.founder == founder}
    end 

    def self.domains
        @@all.collect {|start| start.domain}
    end 

    def sign_contract(startup, venture_capitalist, type, investment)
        FundingRound.new(self, venture_capitalist, type, investment)
    end 

    def num_funding_rounds
        FundingRound.all.select {|fr| fr.startup == self}.count 
    end

    def total_funds
        my_funding_round = FundingRound.all.select {|round| round.startup == self}
        my_investments = my_funding_round.map {|round| round.investment}
        sum = my_investments.reduce(:+)
    end 

    def investors
        FundingRound.all.select {|fr| fr.startup == self}.map {|fr| fr.venture_capitalist}.uniq
    end

    # def big_investors
    #     self.investors.select {|vc| vc.total_worth > 1000000000}
    # end 
    def big_investors
        FundingRound.all.select {|fr| fr.startup == self}.map {|fr| fr.venture_capitalist}.select {|fr| fr.total_worth > 10000000000}
    end

end 



























def big_investors
    FundingRound.all.select {|fr| fr.startup == self}.map {|fr| fr.venture_capitalist}.map {|fr| fr.total_worth > 10000000000}
end 