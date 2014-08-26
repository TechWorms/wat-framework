  require 'watir-webdriver'
  require 'rspec'
  require 'watir-webdriver/wait'
  switches = ['--ignore-ssl-errors=yes']
  browser = Watir::Browser.new :phantomjs, :args => switches
  INDEX_OFFSET = -1
  WEBDRIVER = true
 
Before do
  @browser = browser
  browser.window.resize_to(1360, 768)
end
 
at_exit do
  browser.close
end