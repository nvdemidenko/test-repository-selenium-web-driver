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

def clickSubMenuCatalog ()
  # submenu Catalog start
  @driver.find_element(:id, "doc-catalog").click
  @driver.find_element(:tag_name, "h1")
  @driver.find_element(:id, "doc-option_groups").click
  @driver.find_element(:tag_name, "h1")
  @driver.find_element(:id, "doc-option_groups").click
  @driver.find_element(:tag_name, "h1")
  @driver.find_element(:id, "doc-manufacturers").click
  @driver.find_element(:tag_name, "h1")
  @driver.find_element(:id, "doc-manufacturers").click
  @driver.find_element(:tag_name, "h1")
  @driver.find_element(:id, "doc-suppliers").click
  @driver.find_element(:tag_name, "h1")
  @driver.find_element(:id, "doc-delivery_statuses").click
  @driver.find_element(:tag_name, "h1")
  @driver.find_element(:id, "doc-sold_out_statuses").click
  @driver.find_element(:tag_name, "h1")
  @driver.find_element(:id, "doc-quantity_units").click
  @driver.find_element(:tag_name, "h1")
  @driver.find_element(:id, "doc-csv").click
  @driver.find_element(:tag_name, "h1")
  # submenu Catalog end
end

def clickSubMenuAppearence()
  # submenu Appearence start
  @driver.find_element(:id, "doc-template").click
  @driver.find_element(:tag_name, "h1")
  @driver.find_element(:id, "doc-logotype").click
  @driver.find_element(:tag_name, "h1")
end

def clickSubMenuCustomers()
  # submenu Customers start
  @driver.find_element(:id, "doc-customers").click
  @driver.find_element(:tag_name, "h1")
  @driver.find_element(:id, "doc-csv").click
  @driver.find_element(:tag_name, "h1")
  @driver.find_element(:id, "doc-newsletter").click
  @driver.find_element(:tag_name, "h1")
  # submenu Customers ens
end

def clickSubMenuLanguages()
  # submenu Languages stat
  @driver.find_element(:id, "doc-languages").click
  @driver.find_element(:tag_name, "h1")
  @driver.find_element(:id, "doc-storage_encoding").click
  @driver.find_element(:tag_name, "h1")
  # submenu Languages end
end

def clickSubMenuModules()
  # submenu Modules start
  @driver.find_element(:id, "doc-jobs").click
  @driver.find_element(:tag_name, "h1")
  @driver.find_element(:id, "doc-customer").click
  @driver.find_element(:tag_name, "h1")
  @driver.find_element(:id, "doc-shipping").click
  @driver.find_element(:tag_name, "h1")
  @driver.find_element(:id, "doc-payment").click
  @driver.find_element(:tag_name, "h1")
  @driver.find_element(:id, "doc-order_total").click
  @driver.find_element(:tag_name, "h1")
  @driver.find_element(:id, "doc-order_success").click
  @driver.find_element(:tag_name, "h1")
  @driver.find_element(:id, "doc-order_action").click
  @driver.find_element(:tag_name, "h1")
  # submenu Modules end
end

def clickSubMenuOrders()
  # submenu Orders start
  @driver.find_element(:id, "doc-orders").click
  @driver.find_element(:tag_name, "h1")
  @driver.find_element(:id, "doc-order_statuses").click
  @driver.find_element(:tag_name, "h1")
  # submenu Orders end
end

def clickSubMenuReports()
  # submenu Reports start
  @driver.find_element(:id, "doc-monthly_sales").click
  @driver.find_element(:tag_name, "h1")
  @driver.find_element(:id, "doc-most_sold_products").click
  @driver.find_element(:tag_name, "h1")
  @driver.find_element(:id, "doc-most_shopping_customers").click
  @driver.find_element(:tag_name, "h1")
  # submenu Reports end
end

def clickSubMenuSettings()
  # submenu Settings start
  @driver.find_element(:id, "doc-store_info").click
  @driver.find_element(:tag_name, "h1")
  @driver.find_element(:id, "doc-defaults").click
  @driver.find_element(:tag_name, "h1")
  @driver.find_element(:id, "doc-general").click
  @driver.find_element(:tag_name, "h1")
  @driver.find_element(:id, "doc-listings").click
  @driver.find_element(:tag_name, "h1")
  @driver.find_element(:id, "doc-images").click
  @driver.find_element(:tag_name, "h1")
  @driver.find_element(:id, "doc-checkout").click
  @driver.find_element(:tag_name, "h1")
  @driver.find_element(:id, "doc-advanced").click
  @driver.find_element(:tag_name, "h1")
  @driver.find_element(:id, "doc-security").click
  @driver.find_element(:tag_name, "h1")
  # submenu Settings end
end

def clickSubMenuTax()
  # submenu Tax start
  @driver.find_element(:id, "doc-tax_classes").click
  @driver.find_element(:tag_name, "h1")
  @driver.find_element(:id, "doc-tax_rates").click
  @driver.find_element(:tag_name, "h1")
  # submenu Tax end
end

def clickSubMenuTranslations()
  # submenu Translations start
  @driver.find_element(:id, "doc-search").click
  @driver.find_element(:tag_name, "h1")
  @driver.find_element(:id, "doc-scan").click
  @driver.find_element(:tag_name, "h1")
  @driver.find_element(:id, "doc-csv").click
  @driver.find_element(:tag_name, "h1")
  # submenu Translations end
end

def clickSubMenuvQmods()
  # submenu vQmods start
  @driver.find_element(:id, "doc-vqmods").click
  @driver.find_element(:tag_name, "h1")
  # submenu vQmods end
end

def testAdminMenu ()
  @driver.find_element(:xpath, "//span[text()='Appearence']").click
  clickSubMenuAppearence()

  @driver.find_element(:xpath, "//span[text()='Catalog']").click
  clickSubMenuCatalog()

  @driver.find_element(:xpath, "//span[text()='Countries']").click
  @driver.find_element(:tag_name, "h1")

  @driver.find_element(:xpath, "//span[text()='Currencies']").click
  @driver.find_element(:tag_name, "h1")

  @driver.find_element(:xpath, "//span[text()='Customers']").click
  clickSubMenuCustomers()

  @driver.find_element(:xpath, "//span[text()='Geo Zones']").click
  @driver.find_element(:tag_name, "h1")

  @driver.find_element(:xpath, "//span[text()='Languages']").click
  clickSubMenuLanguages()

  @driver.find_element(:xpath, "//span[text()='Modules']").click
  clickSubMenuModules()

  @driver.find_element(:xpath, "//span[text()='Orders']").click
  clickSubMenuOrders()

  @driver.find_element(:xpath, "//span[text()='Pages']").click
  @driver.find_element(:tag_name, "h1")

  @driver.find_element(:xpath, "//span[text()='Reports']").click
  clickSubMenuReports()

  @driver.find_element(:xpath, "//span[text()='Settings']").click
  clickSubMenuSettings()

  @driver.find_element(:xpath, "//span[text()='Slides']").click
  @driver.find_element(:tag_name, "h1")

  @driver.find_element(:xpath, "//span[text()='Tax']").click
  clickSubMenuTax()

  @driver.find_element(:xpath, "//span[text()='Translations']").click
  clickSubMenuTranslations()

  @driver.find_element(:xpath, "//span[text()='Users']").click
  @driver.find_element(:tag_name, "h1")

  @driver.find_element(:xpath, "//span[text()='vQmods']").click
  clickSubMenuvQmods()

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
