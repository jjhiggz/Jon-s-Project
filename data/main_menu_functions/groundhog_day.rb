
def groundhog_day(user)
  system("clear")
  puts("You wake up")
  adskjf=gets
  puts(".....the day is February 12,")
  desfrhijklgfldskjh = gets
  puts (".......1993")
  asdlfkjh = gets
  puts("Are you going to be a good person today")
  response = gets.strip
  if response == "yes"
    main_menu(user)
  elsif response == "no"
    "Poor Choice"
    groundhog_day(user)
  else
    puts "sorry I didn't catch what you said, oh shit its eleven fifty ni..."
    groundhog_day(user)
  end
end
