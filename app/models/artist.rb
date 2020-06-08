class Artist
  attr_reader :name, :years_experience
  @@all = []
  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self 
  end

  def self.all 
    @@all
  end

# Artist#paintings
# Returns an array all the paintings by an artist
  def paintings
    Painting.all.select do |single_painting|
      single_painting.artist == self 
    end
  end

# Artist#galleries
# Returns an array of all the galleries that an artist has paintings in
  def galleries
    paintings.map do |painting|
      painting.gallery 
    end
  end

# Artist#cities
# Return an array of all cities that an artist has paintings in
  def cities
    paintings.map do |painting|
      painting.gallery.city
    end
  end

# Artist.total_experience
# Returns an integer that is the total years of experience of all artists
  def self.total_experience
    @@all.sum {|artist| artist.years_experience}
  end

# Artist.most_prolific
# Returns an instance of the artist with the highest amount of paintings per year of experience.
  def self.most_prolific
    # experience = @@all.max_by {|experience| experience.years_experience}
    # experience.years_experience
    @@all.max_by {|artist| artist.paintings.size / artist.years_experience}
  end

# Artist#create_painting
# Given the arguments of title, price and gallery, creates a new painting belonging to that artist
  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end
end
