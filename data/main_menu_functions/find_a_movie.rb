
def find_a_movie(user)
  puts "please type in a movie keyword"
  response = gets.strip
  result = Movie.all.find {|n|n.title.upcase.include?("#{response.upcase}")} 
  system("clear")
  if result != nil
    puts "The Movie you looked for is called " + result.title.upcase + " and its id number is #{result.id} [press enter]"
    sadklfhj = gets
  else
    puts "Not Found [press enter]"
    dlkjh = gets
  end
  
  main_menu(user)
end