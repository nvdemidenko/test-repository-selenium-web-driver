  count = @driver.find_elements(:id, "notices").length
   binding.pry
  puts ("✔ number of notice messages: #{count}")
  if ( count <= 1 )
    puts ("✔ Some error, try later")
    puts ("✔ #{@driver.find_elements(:id, 'notices')[0].text}")
    return -1
  end




  case attempt
  when 1
    #binding.pry
    if (@driver.find_element(:id, "notices").text.include? "Wrong combination of username and password or the account does not exist.")#\nYou have 1 login attempts left until your account is blocked")
      puts ("✔ Wrong combination of username and password or the account does not exist.\nYou have 1 login attempts left until your account is blocked")
    else
      puts ("✔ Some error, attempt 1, try later")
      return -1
    end
   when 2
    if (@driver.find_element(:id, "notices").text.include? "Wrong combination of username and password or the account does not exist.")#\nYou have 2 login attempts left until your account is blocked")
      puts ("✔ Wrong combination of username and password or the account does not exist.\nYou have 2 login attempts left until your account is blocked")
    else
      puts ("✔ Some error, attempt 2, try later")
      return -1
    end
  when 3
    if (@driver.find_element(:id, "notices").text.include? "The account is blocked until")
      puts ("✔ #{@driver.find_element(:id, 'notices').text}")
    else
      puts ("✔ Some error, attempt 3, try later")
      puts ("✔ #{@driver.find_element(:id, 'notices').text}")
      return -1
    end
  end
