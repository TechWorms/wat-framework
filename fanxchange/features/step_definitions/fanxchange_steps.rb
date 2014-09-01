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

Then(/^I should see an element with class "(.*)"$/) do |eleclass|
  @browser.element(:class => eleclass).exists?
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

Then(/^I should see (\d+) events displayed$/) do |elnum|
  elements = @browser.elements(:class => 'list-box').size.should == elnum.to_i
  #elements = @browser.elements(:class => 'list-box').size
  #puts elnum.inspect
  #if elements == elnum.to_i
  #  puts "Success"
  #else
  #  puts "Failure"
  #end
end

Then(/^The events displayed should match the location for upcoming events$/) do
  upcoming = @browser.span(:id => 'current_location_pc').text
    puts "The current location is:"
    puts upcoming
    puts "Location for tickets are:"  
  events = @browser.ps(:css => 'html body div.container div.row div.span12 div#ticket-container.frontpage-categories.hidden-phone div.row-fluid.frontpage-upcoming-events div.span8.upcomming-events-section ul.ff-items.thumbnails div.list-box div.list-box-left-mobile div.event-info.line-height-20.text-left table tbody tr td p').each do |tr|
    puts tr.text
  end
end

Then(/^I check that the tickets displayed do not have past dates$/) do
  puts "Dates for current events displayed:"
  @browser.divs(:class => "date").each  do |div|   
    puts div.text if div.exists?
  end
end

Then(/^I go to the (\d+) displayed event$/) do |evnr|
 lnk = @browser.element(:class => "action", :index => evnr.to_i).a
 lnk.click
end

Then(/^I check if tickets are available for the current event$/) do
  tickets = @browser.h3(:id => 'mapPageTicketTitle').text
  puts tickets
end

Then(/^I go back$/) do
  @browser.back
  @browser.div(:class => 'container').wait_until_present 
end

Given(/^I navigate to "(.*)"$/) do |uri|
  @browser.goto uri
end

Then(/^I select "(.*)" from "(.*)"$/) do |sele, seler|
  @browser.select_list(:id => seler).select_value sele
end

Then(/^I open the connection$/) do
  dil = @browser.element(:class => 'button').span
  dil.click
end

Then(/^I check if displayed popular events are shown for future events$/) do
  puts "Dates for current popular events displayed:"
  @browser.ps(:class => "popular-event-details-limit-chars").each  do |div|   
    puts div.text if div.exists?
  end
end

Then(/^I should see drop down results for search query$/) do
  puts "Perfomers"
  pf1 = @browser.element(:class => "ui-menu-item", :index => 0).text
  pf2 = @browser.element(:class => "ui-menu-item", :index => 1).text
  pf3 = @browser.element(:class => "ui-menu-item", :index => 2).text
  puts pf1
  puts pf2
  puts pf3
  puts "Events"
  ev1 = @browser.element(:class => "ui-menu-item", :index => 3).text
  ev2 = @browser.element(:class => "ui-menu-item", :index => 4).text
  ev3 = @browser.element(:class => "ui-menu-item", :index => 5).text
  puts ev1
  puts ev2
  puts ev3
end


