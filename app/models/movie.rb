class Movie < ActiveRecord::Base
  def self.all_movies(sort)
    order(sort).all
  end 

  def self.all_ratings
    select("distinct rating").pluck("rating")
  end 
end
