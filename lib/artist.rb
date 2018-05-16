class Artist
  
<<<<<<< HEAD
  attr_accessor :name, :songs
  
  @@all = []
=======
  attr_accessor :name
  
  @@all
>>>>>>> 0cdb1633cd1711f7c7a2ce76678e5db7a9bd645b
  @songs = []
  
  def initialize(name)
    @name = name
<<<<<<< HEAD
    @songs = []
  end
  
  def self.all
    @@all
=======
>>>>>>> 0cdb1633cd1711f7c7a2ce76678e5db7a9bd645b
  end
  
  def songs
    @songs
  end
  
<<<<<<< HEAD
  def add_song(song)
    @songs << song 
  end
  
  def self.find_or_create_by_name(name)
    if self.find(name) == nil 
      self.create(name)
    else
      self.find(name)
    end
  end
  
  def self.find(name)
    self.all.find {|artist| artist.name == name }
  end
  
  def self.create(name)
    self.new(name).tap {|artist| artist.save}
  end
  
  def save
    @@all << self
  end
  
  def print_songs
    songs.each {|song| puts song.name}
  end
    
=======
>>>>>>> 0cdb1633cd1711f7c7a2ce76678e5db7a9bd645b
end