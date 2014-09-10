Given(/^I am testing Perfomer Features on Fanxchange$/) do
 begin
  @browser.goto "https://devteam:xkc2nXV8@staging.www.fanxchange.com"
rescue => e
  puts "Connection Timeout from server side"
 end
end

Then(/^I follow NBA$/) do
  if @browser.link(:text => 'NBA').visible?
    @browser.link(:text => 'NBA').click
  end
end

Then(/^I follow Toronto Raptors$/) do
  if @browser.link(:text => 'Toronto Raptors').visible?
    @browser.link(:text => 'Toronto Raptors').click
  end
end

Then(/^I should see Toronto Raptors tickets$/) do
  Watir::Wait.until { @browser.text.include? 'Toronto Raptors tickets' }
end

Then(/^I check if perfomer has events$/) do
  tic = @browser.a(:id => 'tickets').span.text
  puts tic
  sleep 5
end

Then(/^If there are more than (\d+) events, Load More button should be present$/) do |arg1|
  disevents = @browser.divs(:class => 'list-box').size
  puts "Currently displayed events"
  puts disevents
  ldbtn = @browser.element(:id => 'load_more1', :index => 0).attribute_value("value")
  puts "Button exists with"
  puts ldbtn
end

Then(/^I check if tickets have Date and Time , Event Location and Venue , Sell Tickets Option , Get Tickets$/) do
  dd = @browser.element(:class => 'date-date').text
  tt = @browser.element(:class => 'time').text
  eve = @browser.element(:class => /event-info/).text
  sll = @browser.element(:class => 'list-box-right-mobile').div.a.text
  get = @browser.element(:class => 'action').a.span.text
  puts "Tickets Contain"
  puts dd
  puts tt
  puts eve
  puts sll
  puts get
end

Then(/^I follow New England Patriots$/) do
   if @browser.link(:text => 'New England Patriots').visible?
    @browser.link(:text => 'New England Patriots').click
  end
end

Then(/^I press Home$/) do
  @browser.button(:id => 'home').click
  @browser.div(:id =>'schedule_gif').wait_while_present
end

Then(/^I should see New England Patriots vs\.$/) do
  Watir::Wait.until { @browser.text.include? 'New England Patriots vs.' }
end

Then(/^I press Away$/) do
  @browser.button(:id => 'away').click
  @browser.div(:id =>'schedule_gif').wait_while_present
end

Then(/^I should see vs\. New England Patriots$/) do
  Watir::Wait.until { @browser.text.include? 'vs. New England Patriots' }
end

Then(/^I should see Opposing Team filter$/) do
  Watir::Wait.until {@browser.div(:id => 'topFilterSelectButton').present?}
end

Then(/^I select team Minnesota Vikings as opposing team$/) do
  @browser.select_list(:id => 'opposing_team').select 'Minnesota Vikings'
  @browser.div(:id =>'schedule_gif').wait_while_present
end

Then(/^I should see events with Minnesota Vikings$/) do
  Watir::Wait.until {@browser.text.include? 'Minnesota Vikings'}
end

Then(/^I select team Detroit Lions as opposing team$/) do
  @browser.select_list(:id => 'opposing_team').select 'Detroit Lions'
  @browser.div(:id =>'schedule_gif').wait_while_present
end

Then(/^I should see events with Detroit Lions$/) do
  Watir::Wait.until {@browser.text.include? 'Detroit Lions'}
end

Then(/^I reset Opposing Team filter$/) do
  @browser.select_list(:id => 'opposing_team').select 'Opposing Team'
  @browser.div(:id =>'schedule_gif').wait_while_present
end

Then(/^I press Schedule$/) do
  @browser.button(:id => 'schedule').click
  @browser.div(:id =>'schedule_gif').wait_while_present
end

Then(/^I select the Date filter$/) do
  @browser.a(:class => 'btn dropdown-toggle').click
end

Then(/^I set the from date to (\d+)\-(\d+)\-(\d+)$/) do |arg1, arg2, arg3|
  @browser.text_field(:id => 'from').set '11012014'
end

Then(/^I set the to date to (\d+)\-(\d+)\-(\d+)$/) do |arg1, arg2, arg3|
  @browser.text_field(:id => 'to').set '11302014'
end

Then(/^I press Refine Search$/) do
  @browser.button(:id => 'btnDateFilter').click
  @browser.div(:id =>'schedule_gif').wait_while_present
end

Then(/^I should see events displayed for November$/) do
 Watir::Wait.until {@browser.text.include? 'Clear'}
 @browser.divs(:class => 'date').each do |evedis|
    puts evedis.text if evedis.present?
  end
end
