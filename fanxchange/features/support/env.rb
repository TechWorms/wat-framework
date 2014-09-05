require 'watir-webdriver'
require 'rspec'
require 'headless'
#switches = ['--ignore-ssl-errors=yes'] 
#browser = Watir::Browser.new :phantomjs, :args => switches
#browser = Watir::Browser.new(:remote, :url => "http://192.168.56.1:4444/wd/hub", :desired_capabilities => :chrome)
#browser = Watir::Browser.new(:remote, :url => "http://192.168.56.1:4444/wd/hub")
headless = Headless.new
headless.start
browser = Watir::Browser.new
Watir.default_timeout = 90
INDEX_OFFSET = 0
WEBDRIVER = true

Before do
 @browser = browser
end

# Before do |scenario|
#   @browser.cookies.clear
# end

at_exit do 
	browser.close
	headless.destroy
end