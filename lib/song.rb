require 'pry'
class Song
  @@count = 0
  @@artists = []
  @@genres = []

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    result_hash = {}
    @@genres.each do |genre_name|
      if result_hash[genre_name]
        result_hash[genre_name] += 1
      else  
        result_hash[genre_name] = 1
      end
    end
    result_hash
  end

  def self.artist_count
    result_hash = {}
    @@artists.each do |artist_name|
      if result_hash[artist_name]
        result_hash[artist_name] += 1
      else  
        result_hash[artist_name] = 1
      end
    end
    result_hash
  end

  attr_reader :name, :artist, :genre

  def initialize name, artist, genre
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

end

hello = Song.new('Hello', 'Adele', 'pop')
polly = Song.new('Polly', 'Nirvana', 'rock')
the_cave = Song.new('The Cave', 'Mumford', 'folk')

def reload
  load 'lib/song.rb'
end

binding.pry