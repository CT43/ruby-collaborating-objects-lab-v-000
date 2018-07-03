
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    @artist = artist
    artist.add_song(self) unless artist.songs.include?(self)
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
