def write_a_review(user)
  puts "Please Input the ID of the movie you wish to rate, if you need help please see 'find a movie' through the main menu"
  response = gets.strip
        system("clear")
  def find_movie(response,user)
    if Movie.find(response) != nil
      system("clear")
    puts "is your movie called #{Movie.find(response).title}? [yes or no]"  
      check_movie(response,user)
    else 
      system("clear")
    puts "Movie not found, sending back to main menu [press enter]" 
    dsafkljhi = gets.strip
    main_menu()
    end
  end
  def check_movie(response,user)
    answer = gets.strip
    if answer = "yes"
      write_review(user,response)
    else
      main_menu(user)
    end
  end
  def write_review(user,response)
    system("clear")
    puts "What do you have to say about this movie? [press enter to leave blank]"
    option = gets.strip
    system("clear")
    puts "How many stars would you give this movie"
    stars = gets.strip.to_i
    puts "Inputting entry [press enter to continue]"
    gets.strip
    new_review = Review.create(user_id: user, optional_description: option, movie_id: Movie.find(response))
    new_review.save
    system("clear")
    main_menu(user)
  end
  



  find_movie(response,user)
end
