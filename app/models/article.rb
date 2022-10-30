class Article
    @@all = []
    attr_reader :magazine, :title 

    def initialize(author, magazine, title)
        @author = author
        @magazine = magazine
        @title = title
        @@all << self
 
    end

    def author 
        @author.name
    end

    def self.all
        @@all
end
end