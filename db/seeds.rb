# t.string :title
# t.integer :year_released
# t.string :pg_rating
# t.integer :runtime
# t.string :genre
require_relative '../data/bmHash'
i=0
while i < bmHash.length
Movie.create(title: bmHash[i]["title"], year_released: bmHash[i]["year_released"].to_i, pg_rating: bmHash[i]["pg_rating"], runtime: bmHash[i]["runtime"].to_i, genre: bmHash[i]["genre"])
i+=1
end

# User.create(name: "Jon" , password: "Jon" , age: "26")
# User.create(name: "Todd" , password: "Todd" , age: "26")
# Review.create(star_rating:4 , user_id: 1, movie_id: 1 )
# Review.create(star_rating:3 , user_id: 2, movie_id: 1 )
