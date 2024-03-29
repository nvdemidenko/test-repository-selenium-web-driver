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
  @driver.find_element(:xpath, "//span[text()='Geo Zones']").click
end

def checkSortGeoZonesZones

  geoZones = @driver.find_elements(:css, "tr.row")
  countOfGeoZones = geoZones.size
  for i in (1..countOfGeoZones)
    if i < countOfGeoZones
      if geoZones[i-1].find_element(:xpath, "./td[3]").attribute("textContent") > geoZones[i].find_element(:xpath, "./td[3]").attribute("textContent")
        puts "Wrong sort in geoZones"
      end
    end
    if geoZones[i-1].find_element(:xpath, "./td[4]").attribute("textContent").to_i > 0
      geoZones[i-1].find_element(:css, "a").click
      zones = @driver.find_elements(:xpath, "//*[@id='table-zones']//tbody//tr[not(@class='header')][not(./td//*[@id='add_zone'])]")
      countOfZones = zones.size
      for k in (1..countOfZones-1)
        if zones[k-1].find_element(:xpath, ".//td[3]//select//option[@selected]").text > zones[k].find_element(:xpath, ".//td[3]//select//option[@selected]").text
           puts "Wrong sort in zones"
         end
      end
      @driver.find_element(:xpath, "//button[@name='cancel']").click
      geoZones = @driver.find_elements(:css, "tr.row")
    end
  end


end

begin
  @driver = Selenium::WebDriver.for(:chrome)
  @wait = Selenium::WebDriver::Wait.new(timeout: 20)

  @driver.get "http://localhost/litecart/admin/"

  loginAdmin()
  openMenuCoutries()
  checkSortGeoZonesZones()

  @driver.close()
  puts ("✔ Test OK")
end
return
