require_relative '../config/environment.rb'


muhammad = Artist.new("muhammad", 10)
joe = Artist.new("joe", 5)
zain = Artist.new("zain", 8)

amber = Gallery.new("amber", "new york")
mal = Gallery.new("mal", "la")
paris = Gallery.new("paris", "denver")

painting1 = Painting.new("painting1", 25, muhammad, amber)
painting2 = Painting.new("painting2", 10, muhammad, mal)
painting3 = Painting.new("painting3", 26, joe, amber)
painting4 = Painting.new("painting4", 25, zain, paris)
painting5 = Painting.new("painting5", 50, joe, paris)

binding.pry

puts "Bob Ross rules."
