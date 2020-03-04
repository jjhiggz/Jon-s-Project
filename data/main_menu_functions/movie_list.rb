def movie_list(user) 
    movie_list_array = Movie.all.map{|n|n.title}
 
    movies = bmHash 

    prompt = TTY::Prompt.new
    a = prompt.enum_select("Select an Option",movie_list_array) 
    #system("clear") 
    movie = Movie.find_by(title: a)
    stats_array = [movie.title, movie.year_released,movie.pg_rating,movie.runtime.to_s + "min", movie.genre]
    #movie_average_star = 188888#movie.average_rating
    # puts movie_average_star
    stats_array.each do |stat| 
        puts stat 
    end 
end