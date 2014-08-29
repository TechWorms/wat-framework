require 'watir-webdriver'
require 'rspec'
require 'watir-webdriver/wait'
switches = ['--ignore-ssl-errors=yes'] 
browser = Watir::Browser.new :phantomjs, :args => switches
#browser = Watir::Browser.new(:remote, :url => "http://192.168.56.1:4444/wd/hub")
INDEX_OFFSET = 0
WEBDRIVER = true
 
Before do
 @browser = browser
 browser.window.resize_to(1360, 768)
end
at_exit do
	browser.close 
end