class Song

    attr_accessor :name, :artist, :genre 
    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre 
        @@count += 1 
        @@genres << genre 
        @@artists << artist 
    end

    def self.count
        @@count 
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        genre_hash = {}
        # iterate over @@genres 
        # inside iteration if genre_hash.key?(@genre)
        # genre_hash[genre] = 1 
        @@genres.map do |genre|
            if genre_hash.key?(genre) == true 
                genre_hash[genre] += 1
            else
                genre_hash[genre] = 1
            end
        end
        genre_hash
    end

    # def self.genre_count
    #     #returns hash, keys = names of each genre & value = # of songs in that genre 
    #     #use @@genres array to create hash keys 
    #     # value needs to count each iteration of that genre 
    #     num = 0
    #     genre_hash = Hash[@@genres.map {|genre| [genre, num += 1]} ]
    # end

    def self.artist_count
        artist_hash = {}
        @@artists.map do |artist|
            if artist_hash.key?(artist)
                artist_hash[artist] += 1
            else
                artist_hash[artist] = 1
            end
        end
        artist_hash
    end
end