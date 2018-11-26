require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec'
require 'site_prism'

Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 30

Capybara.app_host = 'https://www.neon.com.br'

BROWSER = ENV['BROWSER']

Capybara.register_driver :selenium do |app|
  if BROWSER.eql?('chrome')
    Capybara::Selenium::Driver.new(app,
                                   browser: :chrome,
                                   desired_capabilities: Selenium::WebDriver::Remote::Capabilities.chrome(
                                     'chromeOptions' => {
                                       'args' => ['--start-maximized']
                                     }
                                   ))
  elsif BROWSER.eql?('firefox')
    Capybara::Selenium::Driver.new(app, browser: :firefox)
  end
end
