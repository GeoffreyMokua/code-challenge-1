require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

#Author
author_1=Author.new("Ngugi Thiongo")
author_2=Author.new("Heff Oaks")


#Magazine
health=Magazine.new("Living well")
education=Magazine.new("Scaling High")

#Article
article1=Article.new(author_1, health, "Going beyond")
article2=Article.new(author_2, education, "Learning the best")







### DO NOT REMOVE THIS
binding.pry

0
