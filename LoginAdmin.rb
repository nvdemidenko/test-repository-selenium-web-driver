require "rspec"
require "selenium-webdriver"
require "pry"

def loginAdmin ()

  element = @driver.find_element(:name, "username")
#  element.clear
  element.send_keys "admin"
  element = @driver.find_element(:name, "password")
#  element.clear
  element.send_keys "password"
  @driver.find_element(:name, "remember_me").click
  @driver.find_element(:name, "login").click

  puts ("✔ Notice message:  #{@driver.find_element(:id, 'notices').text}")

  return 1
end


begin
  @driver = Selenium::WebDriver.for(:chrome)
  @wait = Selenium::WebDriver::Wait.new(timeout: 20)

  @driver.get "http://localhost/litecart/admin/"

  loginAdmin()

  @driver.close()
  puts ("✔ Test OK")
end
return
