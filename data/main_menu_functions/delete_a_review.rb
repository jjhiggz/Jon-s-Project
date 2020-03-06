def delete_a_review(user)
  if user.reviews.count == 0
    puts "you don't have any reviews, taking you back to the main menu"
    puts "Press enter bro/broette"
    bsadfklfhjn = gets
    main_menu(user) 
  end
  prompt_change = TTY::Prompt.new
  movie_titles = user.movies.map{|n|n.title}
  movie_title = prompt_change.enum_select("Select a review to delete",movie_titles)

  #define which review we are changing
  movie = Movie.find_by(title: movie_title)
  review = Review.find_by(movie: movie, user:user)
#  binding.pry
  Review.delete(review.id)

  user.reload
  # binding.pry

  main_menu(user)

end