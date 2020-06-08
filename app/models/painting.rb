class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []
  def initialize(title, price, artist, gallery)
    @artist = artist 
    @gallery = gallery
    @title = title
    @price = price
    @@all << self 
  end

# Painting.all
# Returns an array of all the paintings
  def self.all
    @@all
  end

# Painting.total_price
# Returns an integer that is the total price of all paintings
  def self.total_price
    total_sum = @@all.sum {|painting| painting.price}
    total_sum
  end

end
