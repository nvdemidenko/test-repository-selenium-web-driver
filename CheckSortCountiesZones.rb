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

def openMenuCoutries
  @driver.find_element(:xpath, "//span[text()='Countries']").click
end

def checkSortCounriesZones
  massOfCounries = []
  massOfZones = []
  countries = @driver.find_elements(:css, "tr.row")
  countOfCountries = countries.size
  for i in (1..countOfCountries-1)
    if countries[i-1].find_element(:xpath, "./td[5]").attribute("textContent") > countries[i].find_element(:xpath, "./td[5]").attribute("textContent")
      puts 'Wrong sort in countries: #{countries[i-1].find_element(:xpath, "./td[5]").attribute("textContent")}, #{countries[i].find_element(:xpath, "./td[5]").attribute("textContent")}'
    end
    if countries[i-1].find_element(:xpath, "./td[6]").attribute("textContent").to_i > 0
      countries[i-1].find_element(:css, "a").click
      zones = @driver.find_elements(:xpath, "//*[@id='table-zones']//tbody//tr[not(@class='header')][not(.//input[@data-type='text'])]")
      countOfZones = zones.size
      for k in (1..countOfZones-1)
        if zones[k-1].find_element(:xpath, "./td[3]").attribute("textContent") > zones[k].find_element(:xpath, "./td[3]").attribute("textContent")
          puts 'Wrong sort in zones: #{zones[k-1].find_element(:xpath, "./td[2]").attribute("textContent")}, #{zones[k].find_element(:xpath, "./td[2]").attribute("textContent")}'
        end
      end
      @driver.find_element(:xpath, "//button[@name='cancel']").click
      countries = @driver.find_elements(:css, "tr.row")
    end
  end


end

begin
  @driver = Selenium::WebDriver.for(:chrome)
  @wait = Selenium::WebDriver::Wait.new(timeout: 20)

  @driver.get "http://localhost/litecart/admin/"

  loginAdmin()
  openMenuCoutries()
  checkSortCounriesZones()

  @driver.close()
  puts ("✔ Test OK")
end
return
