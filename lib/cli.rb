class Cli

  def start
    puts "WELCOME TO THE BILL MURRAY MOVIE THINGY CLI TYPE THING I GUESS"
    puts "Do you have an account already"
    answer = gets.strip
    if answer == "yes"
      login
    elsif answer == "no"
      create_user_name
    else 
      puts "That answer is not supported"
    end
    #improve visual
  end

  def login
    puts "Please Type in your fucking username"
    username = gets.strip
    puts "Please type in your fucking password"
  end
  def create_user_name
    puts "Please Type in your user name"
    username = gets.strip
    check(username,"username") ? create_password(username) : create_user_name
    #improve visual

  end

  def create_password(username)
    puts "Please Type in your password" 
    password = gets.strip
    check(password,"password") ? create_age(username,password) : create_password(username)
    #improve visual

  end

  def create_age(username,password)
    puts "please Type in your age"
    age = gets.strip
    check(age,"age") ? create_user(username,password,age) : create_age(username,password)
    #silence the output
    #improve visual
  end

  def create_user(username,password,age)
    User.create(name: username, password: password, age: age) 
    #silence the output
    #improve visual performance
  end
  


end
