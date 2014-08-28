#  require 'watir-webdriver'
#  require 'rspec'
#  require 'watir-webdriver/wait'
#  switches = ['--ignore-ssl-errors=yes']
#  browser = Watir::Browser.new :phantomjs, :args => switches
#  INDEX_OFFSET = -1
#  WEBDRIVER = true
 
#Before do
#  @browser = browser
#  browser.window.resize_to(1360, 768)
#end
require 'watir-webdriver'
require 'rspec'
require 'watir-webdriver/wait'

browser = Watir::Browser.new :firefox(  
  :remote,  
  :url => "http://192.168.56.1:4444/wd/hub")  

# at_exit do
#   browser.close
# end