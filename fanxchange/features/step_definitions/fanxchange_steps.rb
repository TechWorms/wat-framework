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

Then(/^I should see an element with id "(.*?)"$/) do |eleid|
  @browser.element(:id => eleid).exists?
end

Then(/^I should see an "(.*)" input element$/) do |iE|
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

Then(/^I select team "(.*?)" from "(.*?)"$/) do |sele, seler|
  @browser.select_list(:id => seler).select sele
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

Then(/^I check if perfomer has events$/) do
  tic = @browser.a(:id => 'tickets').span.text
  puts tic
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

Given(/^I login as seller$/) do   
    @browser.link(:text => 'SIGN IN').click
    @browser.text_field(:class => 'emailL_field').set 'wattest3@gmail.com'
    @browser.text_field(:class => 'passwordL_field').set 'testme2012'
    @browser.button(:value => 'Sign in').click
    Watir::Wait.until { @browser.text.include? "Hi Seller" }
end

Given(/^I login as buyer$/) do   
    @browser.link(:text => 'SIGN IN').click
    @browser.text_field(:class => 'emailL_field').set 'wattest4@gmail.com'
    @browser.text_field(:class => 'passwordL_field').set 'testme2012'
    @browser.button(:value => 'Sign in').click
    Watir::Wait.until { @browser.text.include? "Hi Buyer" }
end

Then(/^I filter tickets for "(.*)"$/) do |flrt|
   @browser.span(:text => flrt).click
end

Then(/^I should see available tickets for "(.*)"$/) do |avati|
  Watir::Wait.until { @browser.span(:class => 'section').text.include? avati }
end

Then(/^I check "(.*)"$/) do |chk|
   @browser.checkbox(:id => chk).set
end

Then(/^I should see available tickets with "(.*?)" value$/) do |val|
  Watir::Wait.until { @browser.span(:class => 'details').text.include? val }
end

Then(/^I should see available tickets with "(.*)" or more quantity value$/) do |arg1|
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

Then(/^I there are more than 30 events , check the Load More button is present$/) do
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

Then(/^I press "(.*?)" filter$/) do |arg1|
  @browser.div(:class => 'span5').div.a.click
end

Then(/^I check my order total$/) do
  totl = @browser.p(:class => /price_total_checkout/).text
  puts totl
end

Then(/^I click Enter Member Pass Code$/) do
  @browser.div(:class => 'accordion').div.a.click
end

Then(/^I click "(.*)"$/) do |clckb|
  @browser.input(:value => clckb).click
end

Then(/^I sell tickets for the (\d+) event$/) do |evnd|
  @browser.link(:text => 'Sell Tickets', :index => evnd.to_i).click
end

Then(/^I select Yes, I have already the tickets\.$/) do
  @browser.radio(:class => 'have_ticket').set
end

Then(/^I select Ship hard tickets by FedEx$/) do
  @browser.radio(:value => 'hardticket').set
end

Then(/^I select General Admission$/) do
  @browser.radio(:id => 'general_admission').set
end

Then(/^I select None, sell all my tickets together.$/) do
  @browser.radio(:id => 'all_tickets_together').set
end

Then(/^I check my payout$/) do
  pyo = @browser.element(:class => 'dl-horizontal', :index => 1).text
  puts pyo
end

Then(/^I set the price for the tickets to "(.*)"$/) do |ptik|
  @browser.text_field(:class => 'selling_price').set ptik
end

Then(/^I set the end date of the sale to "(.*)"$/) do |dtik|
  @browser.text_field(:class => 'sale_end_date').set dtik
end

Then(/^I set security code with "(.*)"$/) do |secc|
  @browser.text_field(:name => 'seccode').set secc
end
