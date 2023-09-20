require 'cucumber'
require 'selenium-webdriver'
require 'rspec'
require 'capybara'
require 'site_prism'
require 'capybara/cucumber'
require 'pry'


ENVIRONMENT = ENV['ENVIRONMENT']
ENVIRONMENT_CONFIG = YAML.load_file(File.dirname(__FILE__) + "/environment/#{ENVIRONMENT}.yml")
puts ENVIRONMENT_CONFIG
URL = ENVIRONMENT_CONFIG['url']

Capybara.register_driver :my_chrome do |app|
   
    args = [
        '--incognito',
        '--start-maximized',
        '--window-size=1420,835',
        '--ignore-ssl-errors',
        '--certificate-errors',
        '--disable-popup-blocking',
        '--no-sandbox',
        '--acceptInsecureCerts=true',
        '--disable-gpu',
        '--disable-translate',
        '--disable-impl-side-painting',
        '--debug_level=3'
      ]
      
      options = Selenium::WebDriver::Chrome::Options.new
      args.each { |arg| options.add_argument(arg) }


    if ENV['HEADLESS']
        options.add_argument('--headless')
    end

    Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end

Capybara.default_driver = :my_chrome
Capybara.app_host=URL
Capybara.default_max_wait_time = 10