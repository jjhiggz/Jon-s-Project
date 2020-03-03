require 'require_all'
require_all 'data'

class Cli

  def start
    puts "WELCOME TO THE BILL MURRAY MOVIE THINGY CLI TYPE THING I GUESS"
    puts "Do you have an account already"
    answer = gets.strip
    if answer == "yes"
      login_protocol()
    elsif answer == "no"
      create_user_protocol()
    else 
      puts "That answer is not supported"
    end
    #improve visual
  end

  def login_protocol
    def login
      puts "Please Type in your fucking username"
      count = 0
      username = gets.strip
      user = User.find_by name: username
      password_check(user,count)
    end

    def password_check(user,count)
      if check(user.password,"password",1)
        main_menu(user)
      elsif count < 2 
        count = count+1
        password_check(user,count)
      else
      puts "how come you can't remember your password? What is wrong with you? You should probably have never been born!"
    
      end
    end
    login()
  end

  def main_menu(user)
    puts main_menu_array()
  end
  def create_user_protocol
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
      user = User.create(name: username, password: password, age: age) 
      main_menu(user)
    end
    create_user_name()
  end

end
