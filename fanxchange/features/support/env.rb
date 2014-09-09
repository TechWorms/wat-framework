require 'watir-webdriver'
require 'watir-webdriver/wait'
require 'watir-dom-wait'
require 'rspec'
browser = Watir::Browser.new 
#browser = Watir::Browser.new(:remote, :url => "http://192.168.56.1:4444/wd/hub", :desired_capabilities => :chrome)
#browser = Watir::Browser.new(:remote, :url => "http://192.168.56.1:4444/wd/hub")
# headless = Headless.new
# headless.start
# browser = Watir::Browser.new
INDEX_OFFSET = 0
WEBDRIVER = true

Before do |scenario| 
  @browser = browser
  @browser.cookies.clear
end

at_exit do 
	browser.close
end