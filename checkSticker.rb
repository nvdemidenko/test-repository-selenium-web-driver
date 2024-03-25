require "rspec"
require "selenium-webdriver"
require "pry"

def checkStickersMostPopular()
  elements = @driver.find_elements(:css, "li.product")
  for element in elements
    if element.find_elements(:css, "div.sticker").size() != 1
      puts("Sticker error in Most Popular category!")
    end
  end
  puts ("Stickers in Most Popular category - ok ")
end

def checkStickersCampaigns()
  elements = @driver.find_elements(:css, "li.product")
  for element in elements
    if element.find_elements(:css, "div.sticker").size() != 1
      puts("Sticker error in Campaigns category!")
    end
  end
  puts ("Stickers in Campaigns category - ok ")
end

def checkStickersLatestProducts()
  elements = @driver.find_elements(:css, "li.product")
  for element in elements
    if element.find_elements(:css, "div.sticker").size() != 1
      puts("Sticker error in Latest Products category!")
    end
  end
  puts ("Stickers in Latest Products - ok ")
end

begin
  @driver = Selenium::WebDriver.for(:chrome)
  @wait = Selenium::WebDriver::Wait.new(timeout: 20)

  @driver.get "http://localhost/litecart/"

  checkStickersMostPopular()
  checkStickersCampaigns()
  checkStickersLatestProducts()


  @driver.close()
  puts ("✔ Test OK")
end
return
