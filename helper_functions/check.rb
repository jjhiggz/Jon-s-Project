def check(parameter,param_string)
  puts "Please re-type your #{param_string}"
  parameter_check = gets.strip
  parameter_check == parameter ? true : false
end
