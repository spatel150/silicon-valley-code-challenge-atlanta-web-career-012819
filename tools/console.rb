require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

tesla = Startup.new("Tesla", "Elon Musk", "Cars")
vib = Startup.new("Vibs_Cars", "Vib", "Cars" )
amazon = Startup.new("Amazon", "Jeff Bezos", "E-Commerce")
apple = Startup.new("Apple", "Steve Jobs", "Computers")
facebook = Startup.new("Facebook", "Mark Zuckerberg", "Social Media")
oracle = Startup.new("Oracle", "Larry Ellison", "Database")

cuban = VentureCapitalist.new("Mark Cuban", 20000000)
sacca = VentureCapitalist.new("Chris Sacca", 7500000)
gates = VentureCapitalist.new("Bill Gates", 9000000000)
buffet = VentureCapitalist.new("Warren Buffet", 60000000000)
herjavec = VentureCapitalist.new("Robert Herjavec", 3000000)

funding_1 = FundingRound.new(tesla, cuban, "Series C", 150.0)
funding_2 = FundingRound.new(amazon, sacca, "Series A", 250.0)
funding_3 = FundingRound.new(apple, gates, "Series C", 60.0)
funding_4 = FundingRound.new(facebook, buffet, "Series B", 125.0)
funding_5 = FundingRound.new(oracle, herjavec, "Series A", 100.0)
funding_6 = FundingRound.new(tesla, gates, "Series B", 300.0)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line