require_relative '../data/bmHash'
# binding.pry
Review.destroy_all
Movie.destroy_all
User.destroy_all

i=0
while i < bmHash.length
Movie.create(title: bmHash[i]["title"], year_released: bmHash[i]["year_released"].to_i, pg_rating: bmHash[i]["pg_rating"], runtime: bmHash[i]["runtime"].to_i, genre: bmHash[i]["genre"])
i+=1
end
jon = User.create(name: "Jon" , password: "Jon" , age: "26")
todd = User.create(name: "Todd" , password: "Todd" , age: "26")
willy = User.create(name: "Willy" , password: "Willy" , age: "30")
dolly = User.create(name: "Dolly" , password: "Dolly" , age: "30")
bianca = User.create(name: "Bianca" , password: "Bianca" , age: "25" )

Review.create(star_rating: 5 , user: User.all[1] , movie: Movie.all[1])
Review.create(star_rating: 4 , user: User.all[2] , movie: Movie.all[1])
Review.create(star_rating: 4 , user: User.all[3] , movie: Movie.all[1])
Review.create(star_rating: 4 , user: User.all[4] , movie: Movie.all[1])
Review.create(star_rating: 3 , user: User.all[0] , movie: Movie.all[1])
Review.create(star_rating: 3 , user: User.all[1] , movie: Movie.all[2])
Review.create(star_rating: 3 , user: User.all[2] , movie: Movie.all[2])
Review.create(star_rating: 3 , user: User.all[3] , movie: Movie.all[2])
Review.create(star_rating: 4 , user: User.all[4] , movie: Movie.all[2])
Review.create(star_rating: 3 , user: User.all[0] , movie: Movie.all[2])
Review.create(star_rating: 4 , user: User.all[1] , movie: Movie.all[3])
Review.create(star_rating: 4 , user: User.all[2] , movie: Movie.all[3])
Review.create(star_rating: 5 , user: User.all[3] , movie: Movie.all[3])
Review.create(star_rating: 2 , user: User.all[4] , movie: Movie.all[3])
# binding.pry
Review.create(star_rating: 2 , user: User.all[0] , movie: Movie.all[3])
Review.create(star_rating: 1 , user: User.all[1] , movie: Movie.all[4])
Review.create(star_rating: 5 , user: User.all[2] , movie: Movie.all[4])
Review.create(star_rating: 1 , user: User.all[3] , movie: Movie.all[4])
Review.create(star_rating: 5 , user: User.all[4] , movie: Movie.all[4])
Review.create(star_rating: 1 , user: User.all[0] , movie: Movie.all[4])
Review.create(star_rating: 5 , user: User.all[1] , movie: Movie.all[0])
Review.create(star_rating: 5 , user: User.all[2] , movie: Movie.all[0])
Review.create(star_rating: 5 , user: User.all[3] , movie: Movie.all[0])
Review.create(star_rating: 5 , user: User.all[4] , movie: Movie.all[0])
Review.create(star_rating: 5 , user: User.all[0] , movie: Movie.all[0])


# User.create(name: "Jon" , password: "Jon" , age: "26")
# User.create(name: "Todd" , password: "Todd" , age: "26")
# Review.create(star_rating:4 , user_id: 1, movie_id: 1 )
# Review.create(star_rating:3 , user_id: 2, movie_id: 1 )
