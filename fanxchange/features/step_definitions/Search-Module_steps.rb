Given(/^I am testing Search Features on Fanxchange$/) do
 begin
  @browser.goto "https://devteam:xkc2nXV8@staging.www.fanxchange.com"
rescue => e
  puts "Connection Timeout from server side"
 end
end

Then(/^I should see the search bar$/) do
 Watir::Wait.until { @browser.input(:name => 'search').exists?
  @browser.input(:name => 'search').exists? }
end

Then(/^I fill in search with Toronto$/) do
  @browser.text_field(:name => 'search').set 'Toronto'
end

Then(/^I press GO!$/) do
  @browser.link(:id => 'submit').click
  sleep 5
end

Then(/^I should see We've got your tickets!$/) do
  Watir::Wait.until { @browser.text.include? "We've got your tickets!" }
end

Then(/^I should see Results for Toronto$/) do
  Watir::Wait.until { @browser.text.include? "Results for 'Toronto'" }
end

Then(/^I fill in search with dsdsdDd$/) do
  @browser.text_field(:name => 'search').set 'dsdsdDd'
end

Then(/^I should see There could be a few reasons why nothing turned up in your search:$/) do
  Watir::Wait.until { @browser.text.include? 'There could be a few reasons why nothing turned up in your search:' }
end

Then(/^The search placeholder should contain Search by Team, Artist, Event, Date or Venue$/) do
  @browser.input(:placeholder => 'Search by Team, Artist, Event, Date or Venue').wait_until_present
end

Then(/^I wait for drop down search results$/) do
  Watir::Wait.until { @browser.div(:class => 'autocomplete-row').present? }
  sleep 5
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

Then(/^I click the first event in the search query$/) do
  if @browser.link(:text => 'Toronto FC').visible?
  @browser.link(:text => 'Toronto FC').click
end
end

Then(/^I should see Toronto FC tickets$/) do
  Watir::Wait.until {@browser.text.include? 'Toronto FC tickets'}
end

Then(/^I follow Concerts$/) do
  if @browser.link(:text => 'Concerts').visible?
    @browser.link(:text => 'Concerts').click
  end
end

Then(/^I follow Beyonce$/) do
  if @browser.link(:text => 'Beyonce').visible?
    @browser.link(:text => 'Beyonce').click
  end
end
