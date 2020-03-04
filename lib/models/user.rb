class User < ActiveRecord::Base
  has_many :reviews
  has_many :movies, through: :reviews
  def movies
    list_of_movie_ids = self.reviews.map {|n|n.movie_id}
    list_of_movie_ids.reduce([]) do |sum,n|
      sum = sum << Movie.all.find{|m|m.id == n}
    end.uniq
  end
end

