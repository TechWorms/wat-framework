#Event Feature Step Definitions

Given(/^I am testing Event Features on Fanxchange$/) do
 begin
  @browser.goto "https://devteam:xkc2nXV8@staging.www.fanxchange.com"
rescue => e
	puts "Connection Timeout from server side"
 end
end

Then(/^Once the page is loaded$/) do
  @browser.element(:class => 'logo-fanx').wait_until_present
  @browser.element(:class => 'badges').wait_until_present
  @browser.element(:class => 'container').when_dom_changed
end

Then(/^I should see Tickets to any live event in one search$/) do
  Watir::Wait.until { @browser.text.include? 'Tickets to any live event in one search'}
end

Then(/^I follow NFL$/) do
  Watir::Wait.until { @browser.link(:text => 'NFL').visible? }
  @browser.link(:text => 'NFL').click
end

Then(/^I follow Arizona Cardinals$/) do
  Watir::Wait.until { @browser.link(:text => 'Arizona Cardinals').visible? }
  @browser.link(:text => 'Arizona Cardinals').click
end

Then(/^I check if perfomer Arizona Cardinals has events$/) do
  tic = @browser.a(:id => 'tickets').span.text
  puts tic
end

Then(/^I go to the first displayed event for Arizona Cardinals$/) do
  Watir::Wait.until { @browser.div(:class => 'action', :index => 1).a.visible? }
   @browser.div(:class => 'action', :index => 1).a.click
   sleep 10
end

Then(/^I check if tickets are available for the current event$/) do
  Watir::Wait.until { @browser.h3(:id => 'mapPageTicketTitle').visible? }
  tickets = @browser.h3(:id => 'mapPageTicketTitle').text
  puts tickets
end

Then(/^I should see the Map Container element$/) do
  Watir::Wait.until { @browser.div(:id => 'MapContainer').visible? }
end

Then(/^I follow Buffalo Bills$/) do
  Watir::Wait.until { @browser.link(:text => 'Buffalo Bills').visible? }
  @browser.link(:text => 'Buffalo Bills').click
end

Then(/^I check if perfomer Buffalo Bills has events$/) do
  bfff = @browser.a(:id => 'tickets').span.text
  puts bfff
end

Then(/^I go to the first displayed event for Buffalo Bills$/) do
 Watir::Wait.until { @browser.div(:class => 'action', :index => 1).a.visible? }
   @browser.div(:class => 'action', :index => 1).a.click
   sleep 10
end

Then(/^I filter tickets on the map container section filter for Lower Level \- Sideline$/) do
  Watir::Wait.until { @browser.span(:text => 'Lower Level - Sideline').visible? }
  @browser.span(:text => 'Lower Level - Sideline').when_dom_changed.click
end

Then(/^I should see available tickets for Lower Level \- Sideline$/) do
  Watir::Wait.until {@browser.span(:class => 'section').when_dom_changed.text.include? 'Lower Level - Sideline'}
end


Then(/^I go to the fifth displayed event for Arizona Cardinals$/) do
  Watir::Wait.until { @browser.div(:class => 'action', :index => 5).a.visible? }
   @browser.div(:class => 'action', :index => 5).a.click
   sleep 10
end

Then(/^I should see the E\-Ticket filter$/) do
  Watir::Wait.until { @browser.input(:id => 'eTicketFilter').exists? 
  	@browser.input(:id => 'eTicketFilter').visible?  }
end

Then(/^I check the E\-Ticket filter$/) do
 if @browser.checkbox(:id => 'eTicketFilter').exists?
 	@browser.checkbox(:id => 'eTicketFilter').set
 end
 Watir::Wait.until { @browser.checkbox(:id => 'eTicketFilter').set? }
end

Then(/^I should see only E\-Tickets in the ticket list$/) do
  Watir::Wait.until { @browser.span(:class => 'details').text.include? 'E-ticket' }
end

Then(/^I select more than (\d+) from the quantity option$/) do |arg1|
  @browser.select_list(:id => 'TicketQuantity').select_value '3+'
end

Then(/^I should see only tickets that have more than (\d+)\+ available tickets for current event$/) do |timeee|
  val1 = @browser.element(:class => 'selectqty', :index => 0).option.text
  val2 = @browser.element(:class => 'selectqty', :index => 1).option.text
  val3 = @browser.element(:class => 'selectqty', :index => 2).option.text
  val4 = @browser.element(:class => 'selectqty', :index => 3).option.text
  val5 = @browser.element(:class => 'selectqty', :index => 4).option.text
  val6 = @browser.element(:class => 'selectqty', :index => 5).option.text
  puts val1
  puts val2
  puts val3
  puts val4
  puts val5
  puts val6
end
