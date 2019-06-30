class Song 
  attr_accessor :name, :artist, :genre 
  
  @@count = 0 
  @@genres = []
  @@artists = []
    
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << @genre
    @@artists << @artist
  end
  
  def self.count
    @@count
  end
  
  def self.genres 
    @@genres.uniq!
  end
  
  def self.genre_count
    @@g_hash = {}
    if @@g_hash.has_key?(genre)
      @@g_hash[genre] += 1 
    else
      @@g_hash[genre] = 1 
    end
  end
  @@g_hash
end
      
  def self.artists
    @@artists.uniq!
  end