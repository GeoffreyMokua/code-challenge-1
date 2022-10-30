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
