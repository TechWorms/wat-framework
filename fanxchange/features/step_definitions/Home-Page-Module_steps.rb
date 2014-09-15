Given(/^I am testing Homepage Features on Fanxchange$/) do
  begin
  @browser.goto "https://devteam:xkc2nXV8@staging.www.fanxchange.com"
rescue => e
  puts "Connection Timeout from server side"
 end
end


Then(/^The title should be FanXchange$/) do
  @browser.title.should == "FanXchange"
  @browser.title.include?("FanXchange").should be_truthy
  @browser.title.include?("FanXchange").should_not be_falsey
  @browser.title.should_not include("Live")
end

Then(/^I should see the menu$/) do
 Watir::Wait.until(60) {@browser.ul(:class => /fanx-nav/).visible?}
end

Then(/^I should see the logo$/) do
  Watir::Wait.until(60) {@browser.div(:class => 'logo-fanx').visible?}
end

Then(/^I should see NFL$/) do
  Watir::Wait.until(60) {@browser.text.include? 'NFL'}
end

Then(/^I should see MLB$/) do
  Watir::Wait.until(60) {@browser.text.include? 'MLB'}
end

Then(/^I should see NBA$/) do
  Watir::Wait.until(60) {@browser.text.include? 'NBA'}
end

Then(/^I should see NHL$/) do
  Watir::Wait.until(60) {@browser.text.include? 'NHL'}
end

Then(/^I should see Concerts$/) do
  Watir::Wait.until(60) {@browser.text.include? 'Concerts'}
end

Then(/^I should see Theatre$/) do
  Watir::Wait.until(60) {@browser.text.include? 'Theatre'}
end

Then(/^I should see SIGN IN$/) do
  Watir::Wait.until(60) {@browser.text.include? 'SIGN IN'}
end

Then(/^I should see SELL TICKETS$/) do
  Watir::Wait.until(60) {@browser.text.include? 'SELL TICKETS'}
end

Then(/^I should see HELP$/) do
  Watir::Wait.until(60) {@browser.text.include? 'HELP'}
end

Then(/^I should see the search box$/) do
  Watir::Wait.until {@browser.element(:id => 'searchbox').exists?}
end

Then(/^I should see Upcoming Events$/) do
  Watir::Wait.until(60) {@browser.text.include? 'Upcoming Events'}
end

Then(/^I should see (\d+) events displayed$/) do |arg1|
  if @browser.divs(:class => 'list-box').size == 5
    puts "5 Events Displayed"
  else
    puts "Less then 5 events are displayed"
  end
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

Then(/^I should see event details$/) do
  txt = @browser.p(:class => 'subtitle').when_present(120).text
  puts txt
end

Then(/^I go back$/) do
  @browser.back
end

Then(/^I go to the second displayed event$/) do
  if @browser.element(:class => "action", :index => 1).a.exists? == true
     @browser.element(:class => "action", :index => 1).a.click
   end
end

Then(/^I go to the third displayed event$/) do
if @browser.element(:class => "action", :index => 2).a.exists? == true
     @browser.element(:class => "action", :index => 2).a.click
   end
end

Then(/^I go to the forth displayed event$/) do
  if @browser.element(:class => "action", :index => 3).a.exists? == true
     @browser.element(:class => "action", :index => 3).a.click
   end
end

Then(/^I go to the fifth displayed event$/) do
  if @browser.element(:class => "action", :index => 4).a.exists? == true
     @browser.element(:class => "action", :index => 4).a.click
   end
end

Then(/^I should see Popular Events$/) do
  Watir::Wait.until(60) {@browser.text.include? 'Popular Events'}
end

Then(/^I should see Upcoming Events section$/) do
  Watir::Wait.until(60) {@browser.text.include? 'Upcoming Events'}
end

Then(/^I check if displayed popular events are shown for future events$/) do
  puts "Dates for current popular events displayed:"
  @browser.ps(:class => "popular-event-details-limit-chars").each do |divivo|   
    puts divivo.text if divivo.exists?
  end
end

Then(/^I should see Buy Tickets With Confidence$/) do
  Watir::Wait.until(60) {@browser.text.include? 'Buy Tickets With Confidence'}
end

Then(/^I should see Choose from over (\d+) million tickets for sports, concerts, and theater events, all listed by FanXchange\-verified sellers, and buy them securely online in minutes\.$/) do |arg1|
  Watir::Wait.until(60) {@browser.text.include? 'Choose from over 6 million tickets for sports, concerts, and theater events, all listed by FanXchange-verified sellers, and buy them securely online in minutes.'}
end

Then(/^I should see Sell Tickets With Ease$/) do
  Watir::Wait.until(60) {@browser.text.include? 'Sell Tickets With Ease'}
end

Then(/^I should see Sell your sports, concert, and theater tickets securely and instantly to fans around the world: just list your tickets and FanXchange handles the rest, all with the lowest fees around\.$/) do
  Watir::Wait.until(60) {@browser.text.include? 'Sell your sports, concert, and theater tickets securely and instantly to fans around the world: just list your tickets and FanXchange handles the rest, all with the lowest fees around.'}
end

Then(/^I should see (\d+)% FanXchange$/) do |arg1|
  Watir::Wait.until(60) {@browser.text.include? '100% FanXchange'}
end

Then(/^I should see The FanXchange Guarantee is our commitment to our valued clientele that they will be (\d+)% protected against fraud and your tickets will always arrive on time for the event\. Whether you are buying or selling tickets in our marketplace FanX Guarantee assures that every transaction will be completed in a safe and secure environment\.$/) do |arg1|
  Watir::Wait.until(60) {@browser.text.include? 'The FanXchange Guarantee is our commitment to our valued clientele that they will be 100% protected against fraud and your tickets will always arrive on time for the event. Whether you are buying or selling tickets in our marketplace FanX Guarantee assures that every transaction will be completed in a safe and secure environment.'}
end

Then(/^I should see Read More$/) do
  Watir::Wait.until(60) {@browser.text.include? 'Read More'}
end

Then(/^I should see NFL TICKETS$/) do
  Watir::Wait.until(60) {@browser.text.include? 'NFL TICKETS'}
end

Then(/^I should see Baltimore Ravens$/) do
  Watir::Wait.until(60) {@browser.text.include? 'Baltimore Ravens'}
end

Then(/^I should see San Fransisco (\d+)ers$/) do |arg1|
  Watir::Wait.until(60) {@browser.text.include? 'San Fransisco 49ers'}
end

Then(/^I should see New England Patriots$/) do
  Watir::Wait.until(60) {@browser.text.include? 'New England Patriots'}
end

Then(/^I should see Dallas Cowboys$/) do
  Watir::Wait.until(60) {@browser.text.include? 'Dallas Cowboys'}
end

Then(/^I should see Washington Redskins$/) do
  Watir::Wait.until(60) {@browser.text.include? 'Washington Redskins'}
end

Then(/^I should see Green Bay Packers$/) do
  Watir::Wait.until(60) {@browser.text.include? 'Green Bay Packers'}
end

Then(/^I should see NBA TICKETS$/) do
  Watir::Wait.until(60) {@browser.text.include? 'NBA TICKETS'}
end

Then(/^I should see Toronto Raptors$/) do
  Watir::Wait.until(60) {@browser.text.include? 'Toronto Raptors'}
end

Then(/^I should see New York Knicks$/) do
  Watir::Wait.until(60) {@browser.text.include? 'New York Knicks'}
end

Then(/^I should see Miami Heat$/) do
  Watir::Wait.until(60) {@browser.text.include? 'Miami Heat'}
end

Then(/^I should see Boston Celtics$/) do
  Watir::Wait.until(60) {@browser.text.include? 'Boston Celtics'}
end

Then(/^I should see Los Angeles Lakers$/) do
  Watir::Wait.until(60) {@browser.text.include? 'Angeles Lakers'}
end

Then(/^I should see Oklahoma City Thunder$/) do
  Watir::Wait.until(60) {@browser.text.include? 'City Thunder'}
end

Then(/^I should see NHL TICKETS$/) do
  Watir::Wait.until(60) {@browser.text.include? 'NHL TICKETS'}
end

Then(/^I should see Toronto Maple Leafs$/) do
  Watir::Wait.until(60) {@browser.text.include? 'Toronto Maple Leafs'}
end

Then(/^I should see Chicago Blackhawks$/) do
  Watir::Wait.until(60) {@browser.text.include? 'Chicago Blackhawks'}
end

Then(/^I should see New York Rangers$/) do
  Watir::Wait.until(60) {@browser.text.include? 'New York Rangers'}
end

Then(/^I should see Boston Bruins$/) do
  Watir::Wait.until(60) {@browser.text.include? 'Boston Bruins'}
end

Then(/^I should see Detroit Red Wings$/) do
  Watir::Wait.until(60) {@browser.text.include? 'Detroit Red Wings'}
end

Then(/^I should see Montreal Canadiens$/) do
  Watir::Wait.until(60) {@browser.text.include? 'Montreal Canadiens'}
end

Then(/^I should see MLB TICKETS$/) do
  Watir::Wait.until(60) {@browser.text.include? 'MLB TICKETS'}
end

Then(/^I should see Toronto Blue Jays$/) do
  Watir::Wait.until(60) {@browser.text.include? 'Toronto Blue Jays'}
end

Then(/^I should see San Francisco Giants$/) do
  Watir::Wait.until(60) {@browser.text.include? 'San Francisco Giants'}
end

Then(/^I should see New York Yankees$/) do
  Watir::Wait.until(60) {@browser.text.include? 'New York Yankees'}
end

Then(/^I should see Boston Red Sox$/) do
  Watir::Wait.until(60) {@browser.text.include? 'Boston Red Sox'}
end

Then(/^I should see Philadelphia Phillies$/) do
  Watir::Wait.until(60) {@browser.text.include? 'Philadelphia Phillies'}
end

Then(/^I should see CONCERT TICKETS$/) do
  Watir::Wait.until(60) {@browser.text.include? 'CONCERT TICKETS'}
end

Then(/^I should see Jonas Brothers$/) do
  Watir::Wait.until(60) {@browser.text.include? 'Jonas Brothers'}
end

Then(/^I should see Justin Bieber$/) do
  Watir::Wait.until(60) {@browser.text.include? 'Justin Bieber'}
end

Then(/^I should see Lady Gaga$/) do
  Watir::Wait.until(60) {@browser.text.include? 'Lady Gaga'}
end

Then(/^I should see Roger Waters$/) do
  Watir::Wait.until(60) {@browser.text.include? 'Roger Waters'}
end

Then(/^I should see Carrie Underwood$/) do
  Watir::Wait.until(60) {@browser.text.include? 'Carrie Underwood'}
end

Then(/^I should see Kiss$/) do
  Watir::Wait.until(60) {@browser.text.include? 'Kiss'}
end

Then(/^I should see Black Eyed Peas$/) do
  Watir::Wait.until(60) {@browser.text.include? 'Black Eyed Peas'}
end

Then(/^I should see THEATRE TICKETS$/) do
  Watir::Wait.until(60) {@browser.text.include? 'THEATRE TICKETS'}
end

Then(/^I should see The Book of Mormon$/) do
  Watir::Wait.until(60) {@browser.text.include? 'The Book of Mormon'}
end

Then(/^I should see Lion King$/) do
  Watir::Wait.until(60) {@browser.text.include? 'Lion King'}
end

Then(/^I should see Wicked$/) do
  Watir::Wait.until(60) {@browser.text.include? 'Wicked'}
end

Then(/^I should see Jersey Boys$/) do
  Watir::Wait.until(60) {@browser.text.include? 'Jersey Boys'}
end

Then(/^I should see FanXchange$/) do
  Watir::Wait.until(60) {@browser.text.include? 'FanXchange'}
end

Then(/^I should see Our Team$/) do
  Watir::Wait.until(60) {@browser.text.include? 'Our Team'}
end

Then(/^I should see About Us$/) do
  Watir::Wait.until(60) {@browser.text.include? 'About Us'}
end

Then(/^I should see Jobs$/) do
  Watir::Wait.until(60) {@browser.text.include? 'Jobs'}
end

Then(/^I should see Press$/) do
  Watir::Wait.until(60) {@browser.text.include? 'Press'}
end

Then(/^I should see Legal$/) do
  Watir::Wait.until(60) {@browser.text.include? 'Legal'}
end

Then(/^I should see More Info$/) do
  Watir::Wait.until(60) {@browser.text.include? 'More Info'}
end

Then(/^I should see Help$/) do
  Watir::Wait.until(60) {@browser.text.include? 'Help'}
end

Then(/^I should see Contact Us$/) do
  Watir::Wait.until(60) {@browser.text.include? 'Contact Us'}
end

Then(/^I should see Photo Credits$/) do
  Watir::Wait.until(60) {@browser.text.include? 'Photo Credits'}
end

Then(/^I should see Site Map$/) do
  Watir::Wait.until(60) {@browser.text.include? 'Site Map'}
end

Then(/^I should see Show Us Some Love$/) do
  Watir::Wait.until(60) {@browser.text.include? 'Show Us Some Love'}
end

Then(/^I should see Facebook$/) do
  Watir::Wait.until(60) {@browser.text.include? 'Facebook'}
end

Then(/^I should see Twitter$/) do
  Watir::Wait.until(60) {@browser.text.include? 'Twitter'}
end

Then(/^I should see Instagram$/) do
  Watir::Wait.until(60) {@browser.text.include? 'Instagram'}
end

Then(/^I should see the Badges section$/) do
  Watir::Wait.until(60) {@browser.div(:class => 'badges').visible?}
end

Then(/^I should see ©(\d+) FanXchange\. All Rights Reserved\.$/) do |arg1|
  Watir::Wait.until(60) {@browser.text.include? '©2014 FanXchange. All Rights Reserved.'}
end

Then(/^I follow Change Location$/) do
  if @browser.link(:text => 'Change Location').exists?
      @browser.link(:text => 'Change Location').click
    end
end

Then(/^I use zip code M(\d+)C(\d+)S(\d+)$/) do |arg1, arg2, arg3|
  if @browser.text_field(:id => 'zip').visible?
  @browser.text_field(:id => 'zip').set 'M4C1S2'
end
end

Then(/^I Change Location$/) do
  @browser.button(:value => 'Change Location').click
end

Then(/^I should see upcoming events for Toronto, Ontario$/) do
  Watir::Wait.until(60) {@browser.text.include? 'Upcoming Events Toronto, Ontario'}
end

Then(/^I use city New York$/) do
   if @browser.text_field(:id => 'city').visible?
  @browser.text_field(:id => 'city').set 'New York'
end
end

Then(/^I should see State\/Province field is required!$/) do
  Watir::Wait.until {@browser.text.include? 'State/Province field is required!'}
end

Then(/^I use city Prac$/) do
   if @browser.text_field(:id => 'city').visible?
  @browser.text_field(:id => 'city').set 'Prac'
end
end

Then(/^I use state Pirac$/) do
   if @browser.text_field(:id => 'state').visible?
  @browser.text_field(:id => 'state').set 'Pirac'
end
end

Then(/^I should see upcoming events for New York, New York$/) do
  Watir::Wait.until {@browser.text.include? 'Upcoming Events New York, New York'}
end

Then(/^I use state New York$/) do
   if @browser.text_field(:id => 'state').visible?
  @browser.text_field(:id => 'state').set 'New York'
end
end

Given(/^I navigate to https:\/\/proxylistpro\.com\/\#proxy$/) do
  @browser.goto 'https://proxylistpro.com/#proxy'
end

Then(/^I use address http:\/\/www\.fanxchange\.com$/) do
   if @browser.text_field(:id => 'address').visible?
  @browser.text_field(:id => 'address').set 'https://devteam:xkc2nXV8@staging.www.fanxchange.com'
end
end

Then(/^I use Dalas for location$/) do
  @browser.select_list(:id => 'select-location').select_value 'dallas.proxylistpro.com'
end

Then(/^I open the connection$/) do
  dil = @browser.element(:class => 'button').span
  dil.click
  @browser.element(:class => 'button').wait_while_present
end
