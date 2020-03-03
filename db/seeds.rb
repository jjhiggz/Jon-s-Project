# t.string :title
# t.integer :year_released
# t.string :pg_rating
# t.integer :runtime
# t.string :genre
require_relative '../data/bmHash'
i=0
while i < bmHash.length
Movie.create(title: "bmHash[i]["title"]", year_released: bmHash[i]["year_released"].to_i, pg_rating: bmHash[i]["pg_rating"], runtime: bmHash[i]["runtime"].to_i, genre: bmHash[i]["genre"])
i+=1
end

