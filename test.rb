require "rspec"
require "selenium-webdriver"

@driver = Selenium::WebDriver.for(:chrome)
@wait = Selenium::WebDriver::Wait.new(timeout: 10)

@driver.get "http://google.com"
element = @driver.find_element(:name, "q")
element.send_keys "webdriver"
@driver.find_element(:name, "btnK").click

@wait.until { @driver.title == "webdriver - Поиск в Google" }
@driver.close()
