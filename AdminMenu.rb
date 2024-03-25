require "rspec"
require "selenium-webdriver"
require "pry"

def loginAdmin ()

  element = @driver.find_element(:name, "username")
#  element.clear
  element.send_keys "admin"
  element = @driver.find_element(:name, "password")
#  element.clear
  element.send_keys "admin"
  @driver.find_element(:name, "remember_me").click
  @driver.find_element(:name, "login").click


  return 1
end

def testAdminMenu ()
  numOfElements = @driver.find_elements(:css, "li#app-").size()

  for i in (0..numOfElements-1)
    elements = @driver.find_elements(:css, "li#app-")
    #puts ("✔ menu #{elements[i].text()}")
    elements[i].click
    elements = @driver.find_elements(:css, "li#app-")
    elements[i].find_element(:xpath, "//*[@id='content']/h1")
    submenu = elements[i].find_elements(:css, "ul.docs li")
    numSub = submenu.size()
    for k in (0..numSub-1)
      #puts ("✔ ---  #{submenu[k].text()}")
      submenu[k].click
      elements = @driver.find_elements(:css, "li#app-")
      submenu = elements[i].find_elements(:css, "ul.docs li")
      submenu[k].find_element(:xpath, "//*[@id='content']/h1")
    end
  end

end

begin
  @driver = Selenium::WebDriver.for(:chrome)
  @wait = Selenium::WebDriver::Wait.new(timeout: 20)

  @driver.get "http://localhost/litecart/admin/"

  loginAdmin()
  testAdminMenu()

  @driver.close()
  puts ("✔ Test OK")
end
return
