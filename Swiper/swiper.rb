require 'selenium-webdriver'

options = Selenium::WebDriver::Chrome::Options.new
options.add_argument('no-sandbox')

driver = Selenium::WebDriver.for :chrome, options: options
driver.navigate.to "https://tinder.com"
sleep(30)

while (true) do
  puts "New Key Press - Right Arrow"
  driver.action.send_keys(:arrow_right)
               .send_keys(:arrow_right)
               .perform
  #sleep (10)
end
