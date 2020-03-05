def movie_list(user) 
    movie_list_array = Movie.all.map{|n|n.title}

    prompt = TTY::Prompt.new
    a = prompt.enum_select("Select an Option",movie_list_array) 

    movie = Movie.find_by(title: a)

    stats_array = [movie.title, movie.year_released,movie.pg_rating,movie.runtime.to_s + "min", movie.genre]
    movie_star_sum = Review.select{|n|n.movie_id == movie.id}.sum
    movie_star_count = Review.select{|n|n.movie_id == movie.id}.count
    movie_star_count > 0 ? movie_star_average = movie_star_sum/movie_star_count : movie_star_average = "Nobody has Reviewed this movie yet"
    
    stats_array << movie_star_average
    stats_array.each do |stat| 
        puts stat 
    end 
    puts "press enter to go back to the main menu"
    aa = gets
    system("clear")
    main_menu(user)


end