Given(/^I am on Fanxchange$/) do
  @browser.goto "https://devteam:xkc2nXV8@staging.www.fanxchange.com"
end

Then(/^Once the page is loaded$/) do
  @browser.div(:class => 'logo-fanx').wait_until_present
end

Then(/^The title should be FanXchange$/) do
  @browser.title.should == "FanXchange"
  @browser.title.include?("FanXchange").should be_truthy
  @browser.title.include?("FanXchange").should_not be_falsey
  @browser.title.should_not include("staging")
end

Then(/^I should see "(.*)"$/) do |text|
    Watir::Wait.until { @browser.text.include? text }
end

Then(/^I should see an "(.*)" element$/) do |open|
  array_el = [:class, :id]
  array_el.each do |el|
    sss = @browser.element(el => open).exist?
    if sss
      @browser.element(el => open).wait_until_present
      break
    else
      false
    end
    #if ( p @browsersas.element(el => open).present?).should == true
     #  p @browser.element(el => open).wait_until_present
    #end
  end
@browser.element(:id => 'cgethry').wait_until_present
end

Then(/^I should see an "(.*?)" input element$/) do |iE|
  @browser.input(:id => iE).wait_until_present
end

Then(/^The search placeholder should contain Search by Team, Artist, Event, Date or Venue$/) do
  @browser.input(:placeholder => 'Search by Team, Artist, Event, Date or Venue').wait_until_present
end

Then(/^I follow "(.*)"$/) do |link|
  @browser.link(:text => link).click
end

Then(/^I fill in "(.*)" with "(.*)"$/) do |arg1, arg2|
  @browser.text_field(:id => arg1).set arg2
end

Then(/^I press "(.*)"$/) do |butt|
  @browser.button(:value => butt).click
end

Then(/^I wait for element "(.*)"$/) do |waitr|
  @browser.i(:class => waitr).wait_until_present
end

Then(/^I should see (\d+) events displayed$/) do |arg1|
  p @browser.elements(:class => 'list-box').size

end


