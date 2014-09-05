require 'watir'
require 'watir-webdriver'
require 'rspec'
require 'headless'
switches = ['--ignore-ssl-errors=yes'] 
browser = Watir::Browser.new :phantomjs, :args => switches
#browser = Watir::Browser.new(:remote, :url => "http://192.168.56.1:4444/wd/hub", :desired_capabilities => :chrome)
#browser = Watir::Browser.new(:remote, :url => "http://192.168.56.1:4444/wd/hub")
# headless = Headless.new
# headless.start
# browser = Watir::Browser.new
INDEX_OFFSET = 0
WEBDRIVER = true

Before do
 @browser = browser
 browser.window.resize_to 1280, 1024 
end

require 'watir-webdriver'

module Watir
  class WhenPresentDecorator
    def method_missing(m, *args, &block)
      unless @element.respond_to?(m)
        raise NoMethodError, "undefined method `#{m}' for #{@element.inspect}:#{@element.class}"
      end

      begin
        Watir::Wait.until(@timeout, @message) { @element.present? }
      rescue
        sleep(10)
        puts "timed out, let's refresh"
        @element.browser.refresh
      else
        @element.__send__(m, *args, &block)
      end
    end
  end # WhenPresentDecorator  
end

Before do |scenario|
  @browser.cookies.clear
end

After do |scenario|
  @browser.cookies.clear
end

at_exit do 
	browser.close
	# headless.destroy
end