class Movie < ActiveRecord::Base
  has_many :reviews
  has_many :users, through: :reviews

  def users
    list_of_user_ids = self.reviews.map {|n|n.user_id}
    list_of_user_ids.reduce([]) do |sum, n|
      sum = sum << User.all.find{|m|m.id == n}
    end.uniq
  end
  def star_rating
    reviews_for_movie = Review.all.select{|n|n.movie = self}
     ratings_for_movie = reviews_for_movie.map{|n|n.star_rating}
     ratings_for_movie = ratings_for_movie.select{|n|n!=nil}
     ratings_for_movie.sum > 0 ? (ratings_for_movie.sum.to_f / ratings_for_movie.count).round(2) : "no ratings were made for this movie bitch"
  end

  # def average_rating
  #   # binding.pry
  #   star_sum = self.reviews.reduce(0) do |sum, n|
  #     sum += n.star_rating
  #   end
  #   star_sum/self.reviews.count
  # end 

  

end
