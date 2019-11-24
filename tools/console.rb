require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

s1 = Startup.new("Pixel", "Rick Reid", "pixel.com")
s2 = Startup.new("Apple", "Steve Jobs", "apple.com")
s3 = Startup.new("Microsoft", "Bill Gates", "ms.com")
s4 = Startup.new("Paragon", "Bill Gates", "paragon.com")
s5 = Startup.new("Emo", "Steve Jobs", "emo.com")

v1 = VentureCapitalist.new("Josh Huttel", 3_523_391)
v2 = VentureCapitalist.new("Ashton Kutcher", 50_302_321)
v3 = VentureCapitalist.new("Jeffrey Jaffer", 2_010_895)
v4 = VentureCapitalist.new("Flava Flave", 998_391)
v5 = VentureCapitalist.new("John Slater", 523_391)


f1 = FundingRound.new("Angel", s2, "A", v1, 500_000)
f2 = FundingRound.new("Pre-Seed", s1, "R2", v3, 150_000)
f3 = FundingRound.new("Series A", s2, "B", v5, 200_000)
f4 = FundingRound.new("Angel", s4, "A", v2, 100_000)
f5 = FundingRound.new("Seed", s3, "R5", v1, 300_000)




binding.pry
0 #leave this here to ensure binding.pry isn't the last line