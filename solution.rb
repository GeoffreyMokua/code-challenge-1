# Please copy/paste all three classes into this file to submit your solution!

#class Article
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

#class Author
class Author
  attr_reader :name

  def initialize(name)
    @name = name
  end


  #articles written by author
  def articles 
    Article.all.filter {|article| article.author == @name}
    end

    #magazines contributed by author
  def magazines 
  articles.map { |article| article.magazine }.uniq
  end

  
  #create article instance associates with particular author
  def add_article(magazine, title)
    Article.new(magazine, self, title)
  end

  #unique array of instances
  def topics_areas
    magazines.map { |magazine| magazine.category }.uniq
 end

end

#class magazine

class Magazine
  attr_accessor :name, :category
  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def self.all
    @@all
    end

    def articles 
      Article.all.filter{|article| article.magazine.name == @name}
      end


    #contributors
    def contributors
     self.articles.map { |article|article.author}.uniq
        end


    #find by name
    def self.find_by_name (name)
      self.all.find  {|magazine| magazine.name == name} 
  end

  
    #title of article
    def article_titles
    self.articles.map { | article | article.title}
    end
    

    #contributing authors
    def contributing_authors 
      self.contributors.filter { |author| author.articles.count > 2}
      end
    end