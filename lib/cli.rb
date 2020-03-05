require 'require_all'
require_all 'data'
require 'tty-prompt'

class Cli

  def start
    system("clear")
    puts "WELCOME TO THE BILL MURRAY MOVIE THINGY CLI TYPE THING I GUESS"
    puts "press enter to continue"
    asdkljh = gets
    system("clear")
    puts "Do you have an account already"
    answer = gets.strip
    system("clear")
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
      system("clear")
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

  def create_user_protocol
    def create_user_name
      puts "Please Type in your user name"
      username = gets.strip
      system("clear")
      check(username,"username") ? create_password(username) : create_user_name
      #improve visual
      
    end
    
    def create_password(username)
      puts "Please Type in your password" 
      password = gets.strip
      system("clear")
      check(password,"password") ? create_age(username,password) : create_password(username)
      #improve visual
      
    end
    
    def create_age(username,password)
      puts "please Type in your age"
      age = gets.strip
      system("clear")
      if age
        check(age,"age") ? create_user(username,password,age) : create_age(username,password)
      else
        puts "please type in a number not a string ya idiot (press enter to continue)"
        aesdflkjfhgdskljh = gets
        system("clear")
        create_age(username,password)
      end
      #silence the output
      #improve visual
    end
    
    def create_user(username,password,age)
      user = User.create(name: username, password: password, age: age) 
      main_menu(user)
    end
    create_user_name()
  end
  
  def main_menu(user)
    system("clear")
    
    prompt = TTY::Prompt.new
    a = prompt.enum_select("Select an Option",main_menu_array)
    system("clear")
    case a
      when main_menu_array[0] #find a movie
        find_a_movie(user)
      when main_menu_array[1] #Look at list of movies
        movie_list(user)  # i will let you do this so you can pretty print a table
      when main_menu_array[2] #Write a review
        write_a_review(user) 
      when main_menu_array[3] #change a review
        change_a_review(user)
      when main_menu_array[4] #Delete a review
        delete_a_review(user)
      when main_menu_array[5] #exit
        puts "Goodbye #{user.name}[press enter]"
        a = gets
      when main_menu_array[6] #groundogggggggf
        groundhog_day(user)
    end
  end
end
