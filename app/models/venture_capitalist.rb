class VentureCapitalist

    @@all = []

    attr_reader :name, :total_worth

    def initialize(name, total_worth)
        @name = name
        @total_worth = total_worth
        @@all << self
    end

    def self.all
        @@all
    end

    def self.tres_commas_club
        @@all.find_all {|vc| vc.total_worth > 1000000000}
    end

    def offer_contract(startup, venture_capitalist, type, investment)
        FundingRound.new(startup, self, type, investment)
    end 

    def funding_rounds
        FundingRound.all.select {|fr| fr.venture_capitalist == self}
    end 

    def portfolio
        FundingRound.all.select {|fr| fr.venture_capitalist == self}.map {|fr| fr.startup}.uniq
    end 

    def biggest_investment
        FundingRound.all.find_all {|fr| fr.venture_capitalist == self}.max_by {|fr| fr.investment}
    end 

    def invested(domain)
        FundingRound.all.select {|fr| fr.venture_capitalist == self}.map {|fr| fr.investment}
    end 




end
