#  require_relative '/.../config/environment.rb'

def change_a_review(user)
#  binding.pry
  system("clear")
  #prompt the user
  if user.reviews.count == 0 
    puts "No reviews to Change [press enter]"
    asdlkfjh = gets
    main_menu(user)
  end

  prompt_change = TTY::Prompt.new
  movie_titles = user.movies.map{|n|n.title}
  movie_title = prompt_change.enum_select("Select a review to change",movie_titles)
# binding.pry
#   #define which review we are changing
  movie_id = Movie.find_by(title: movie_title).id
  review = Review.find_by(movie_id: movie_id, user_id:user.id)


  #Takes in the new description and star rating
  system("clear")
  puts "Redescribe the movie #{movie_title}"
  optional_description = gets.strip
  system("clear")
  puts "Rerate the movie #{movie_title} out of 5 stars"
  star_rating = gets.strip
  system("clear")

  #Changes the review
  review.optional_description = optional_description
  review.star_rating = star_rating
  review.save
  system("clear")
  puts "Taking you back to the main menu    [Please press enter]" 
  lkdfsuhj = gets 

  main_menu(user)
end
