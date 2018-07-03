
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    add_song(self)

  end

  def self.new_by_filename(file_name)
    file_array = file_name.split(" - ")
    song_title = file_array[1]
    artist = file_array[0]
    song = self.new(song_title)
    song.artist_name = artist
    song
  end



end
