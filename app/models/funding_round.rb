class FundingRound

    @@all = []

    attr_reader :startup, :venture_capitalist 
    attr_accessor :type, :investment

    def initialize(startup, venture_capitalist, type, investment)
        @startup = startup
        @venture_capitalist = venture_capitalist
        @type = type
        @investment = investment 
        @@all << self
    end 

    def self.all 
        @@all
    end 

    # def investment
    #     if (@investment > 0)
    #         return @investment
    #     end
    # end 

end
