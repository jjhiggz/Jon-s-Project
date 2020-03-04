class Movie < ActiveRecord::Base
  has_many :reviews
  has_many :users, through: :reviews

  def users
    list_of_user_ids = self.reviews.map {|n|n.user_id}
    list_of_user_ids.reduce([]) do |sum, n|
      sum = sum << User.all.find{|m|m.id == n}
    end.uniq
  end

  def average_rating
    # binding.pry
    star_sum = self.reviews.reduce(0) do |sum, n|
      sum += n.star_rating
    end
    star_sum/self.reviews.count
  end 

  

end
