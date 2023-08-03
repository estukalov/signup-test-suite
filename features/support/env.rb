require 'rubygems'
require 'capybara'
require 'capybara/dsl'
require 'rspec'
require "selenium-webdriver"

Capybara.run_server = false

options = Selenium::WebDriver::Chrome::Options.new
options.add_argument('--disable-blink-features=AutomationControlled')
options.add_argument('--disable-web-security')

Capybara.register_driver :chrome do |app|
    Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end

Capybara.default_driver = :chrome

Capybara.default_selector = :xpath


World(Capybara::DSL)
