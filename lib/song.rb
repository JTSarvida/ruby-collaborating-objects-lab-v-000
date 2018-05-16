class Song 
  
<<<<<<< HEAD
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
  end
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
  
  def self.new_by_filename(files)
    artist, song = files.split(" - ")
    new_song = self.new(song)
    new_song.artist_name = artist
    new_song
  end
  
=======
  attr_accessor :name, :artist 
  
  def initialize(name)
    @name = name
    @artist = artist
  end
  
  def artist_name
    if self.artist 
      self.artist.name
    else
      nil 
    end
  end
  
  def self.new_by_filename(files)
    song = Song.new(files).remove(//)
  end
>>>>>>> 0cdb1633cd1711f7c7a2ce76678e5db7a9bd645b
end