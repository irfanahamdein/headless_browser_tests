require 'selenium-webdriver'
require 'capybara/cucumber'
require 'rspec/expectations'

Capybara.register_driver(:headless_chrome) do |app|
  capabilities = Selenium::WebDriver::Remote::Capabilities.chrome(
    chromeOptions: { args: %w[headless disable-gpu] }
  )

  Capybara::Selenium::Driver.new(
    app,
    browser: :chrome,
    desired_capabilities: capabilities
  )
end

Capybara.configure do |config|
  config.run_server = false
  config.default_driver = :headless_chrome
end

Capybara.javascript_driver = :headless_chrome
