require_relative 'startup'
require_relative 'venture_capitalist'
require_relative 'funding_round'
require 'pry'

s1 = Startup.new('raybamz', "kayt williams", "that_place")
s2 = Startup.new('yoogle', "bill smith", "this_place")
s3 = Startup.new('bookface', "wario lopez", "one_place_over_there")

v1 = VentureCapitalist.new('poop',210973833)
v2 = VentureCapitalist.new('potato',21033)
v3 = VentureCapitalist.new('fartsniffer',2833)
v4 = VentureCapitalist.new('jellybean',9738335)

f1 = FundingRound.new(s1,v1,500,'Seed')
f2 = FundingRound.new(s3,v2,5000,'Angel')
f3 = FundingRound.new(s2,v1,1_600_000,'Pre-Seed')
f4 = FundingRound.new(s2,v1,500_000,'Series A')
f5 = FundingRound.new(s1,v3,50,'Series B')

binding.pry
stuff = "string"