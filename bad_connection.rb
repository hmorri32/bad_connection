def lower_case?(string)
  string =~ /[a-z]/ ? true : false
end

def caps?(string)
  string.upcase == string ? true : false
end

def good_bye?(string)
  string == "GOODBYE!" ? true : false
end

def no_message?(string)
  string.empty? ? true : false
end

puts "HELLO THIS IS A GROCERY STORE" 

ready_to_quit = false
bye_count     = 0

until ready_to_quit
  message = gets.chomp

  case 
  when good_bye?(message)
    bye_count += 1
    if bye_count == 2 
      ready_to_quit = true
      puts "THANK YOU FOR CALLING!"
    else 
      puts "ANYTHING ELSE I CAN HELP WITH?"
    end
  when no_message?(message) then puts "HELLO!?"
  when lower_case?(message) then puts "I AM HAVING A HARD TIME HEARING YOU"
  when caps?(message)       then puts "NO THIS IS NOT A PET STORE!"
  end
end