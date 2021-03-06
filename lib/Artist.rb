class Artist 
  extend Concerns::Findable
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
    @songs = []
  end 
  
  def genres 
     genres = @songs.collect do |song|
      song.genre 
    end 
    genres.uniq
  end 
  
  def songs 
    @songs 
  end 
  
  def add_song(song)
    if song.artist != self
    song.artist = self 
    else 
    end 
    if @songs.include?(song) == true 
    else song != @songs.include?(song)
      @songs << song 
    end 
  end 
  
  def self.all 
    @@all 
  end 
  
  def self.destroy_all 
    @@all.clear 
  end 
  
  def save 
    @@all << self 
  end 
  
  def self.create(name) 
    artist = Artist.new(name)
  end 
  
end 