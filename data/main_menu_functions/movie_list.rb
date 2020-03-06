def movie_list(user) 
    
    movie_list_array = Movie.all.map{|n|n.title}

    prompt = TTY::Prompt.new
    a = prompt.enum_select("Select an Option",movie_list_array) 
    # binding.pry
    movie = Movie.find_by(title: a)

    stats_array = [movie.title,"Year released: #{movie.year_released}",movie.pg_rating,"Runtime #{movie.runtime.to_s}" + "min", movie.genre]
    # movie_star_sum = Review.select{|n|n.movie_id == movie.id}.star_rating.sum
    # movie_star_count = Review.select{|n|n.movie_id == movie.id}.count

    star_rating = movie.star_rating
    stats_array << "Our Murrrayther frickin users rated this movie at #{star_rating} / 5 Stars"
    stats_array.each do |stat| 
        puts stat 
    end 
    puts "press enter to go back to the main menu"
    aa = gets
    system("clear")
    main_menu(user)


end