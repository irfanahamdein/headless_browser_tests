require 'selenium-webdriver'
require 'capybara/cucumber'
require 'rspec/expectations'

Capybara.register_driver(:headless_chrome) do |app|
  capabilities = Selenium::WebDriver::Remote::Capabilities.chrome(
    chromeOptions: { args: %w[headless no-sandbox disable-gpu] }
  )

  Capybara::Selenium::Driver.new(
    app,
    browser: :chrome,
    desired_capabilities: capabilities
  )
end

Capybara.register_driver :headless_firefox do |app|
  browser_options = ::Selenium::WebDriver::Firefox::Options.new()
  browser_options.args << '--headless'

  Capybara::Selenium::Driver.new(
    app,
    browser: :firefox,
    options: browser_options
  )
end

Capybara.register_driver :chrome do |app|
    Capybara::Selenium::Driver.new(app, browser: :chrome)
  end

Capybara.register_driver :firefox do |app|
    Capybara::Selenium::Driver.new(app, browser: :firefox)
end

Capybara.configure do |config|
  config.run_server = false

  case ENV['DRIVER']
      when "headless_chrome"
        config.default_driver = :headless_chrome
      when "headless_firefox"
        config.default_driver = :headless_firefox
      else
        config.default_driver = :headless_firefox
      end

end

Capybara.javascript_driver = :headless_firefox
