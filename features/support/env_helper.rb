
# Helper to use on Env starting
class EnvHelper
  def driver_path
    if OS.windows?
      Selenium::WebDriver::Firefox.driver_path = File.expand_path('./') + '/driver/driver_windows/geckodriver.exe'
      Selenium::WebDriver::Chrome.driver_path = File.expand_path('./') + '/driver/driver_windows/chromedriver.exe'
      Selenium::WebDriver::IE.driver_path = File.expand_path('./') + '/driver/driver_windows/IEDriverServer.exe'
    elsif OS.mac?
      Selenium::WebDriver::Firefox.driver_path = File.expand_path('./') + '/driver/driver_mac/geckodriver'
      Selenium::WebDriver::Chrome.driver_path = File.expand_path('./') + '/driver/driver_mac/chromedriver'
    end
  end
end
