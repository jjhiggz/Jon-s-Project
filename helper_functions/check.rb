def check(parameter,param_string,option = 0)
  if option == 0 
  puts "Please re-type your #{param_string}"
  parameter_check = gets.strip
  parameter_check == parameter ? true : false
  elsif option == 1
  puts "Please type in your #{param_string}"
  parameter_check = gets.strip
  parameter_check == parameter ? true : false
  end
end
