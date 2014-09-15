Given(/^I am testing Account Features on Fanxchange$/) do
  begin
  @browser.goto "https://devteam:xkc2nXV8@staging.www.fanxchange.com"
rescue => e
  puts "Connection Timeout from server side"
 end
end

Then(/^I should see Hi Seller$/) do
  Watir::Wait.until(60) {@browser.text.include? 'Hi Seller'}
end

Then(/^I should see EVENTS TO ATTEND$/) do
  Watir::Wait.until(60) {@browser.text.include? 'EVENTS TO ATTEND'} 
end

Then(/^I should see My Orders$/) do
  Watir::Wait.until(60) {@browser.text.include? 'My Orders'}
end

Then(/^I follow My Orders$/) do
   if @browser.link(:text => 'My Orders').visible?
    @browser.link(:text => 'My Orders').click
  end
end

Then(/^I should see Order Number$/) do
  Watir::Wait.until(60) {@browser.text.include? 'Order #'}
end

Then(/^I should see Event$/) do
  Watir::Wait.until(60) {@browser.text.include? 'Event'}
end

Then(/^I should see Event Date$/) do
  Watir::Wait.until(60) {@browser.text.include? 'Event'}
end

Then(/^I should see SELLING TICKETS$/) do
  Watir::Wait.until(60) {@browser.text.include? 'SELLING TICKETS'}
end

Then(/^I should see My Tickets for Sale$/) do
  Watir::Wait.until(60) {@browser.text.include? 'My Tickets for Sale'}
end

Then(/^I follow My Tickets for Sale$/) do
    if @browser.link(:text => 'My Tickets for Sale').visible?
    @browser.link(:text => 'My Tickets for Sale').click
  end
end

Then(/^I should see My Expired Tickets$/) do
  Watir::Wait.until(60) {@browser.text.include? 'My Expired Tickets'}
end

Then(/^I follow My Expired Tickets$/) do
  if @browser.link(:text => 'My Expired Tickets').visible?
    @browser.link(:text => 'My Expired Tickets').click
  end
end

Then(/^I should see Payment$/) do
  Watir::Wait.until(60) {@browser.text.include? 'Payment'}
end

Then(/^I follow Payment$/) do
  if @browser.link(:text => 'Payment').visible?
    @browser.link(:text => 'Payment').click
  end
end

Then(/^I should see MY PROFILE$/) do
  Watir::Wait.until(60) {@browser.text.include? 'MY PROFILE'}
end

Then(/^I should see My Info$/) do
  Watir::Wait.until(60) {@browser.text.include? 'My info'}
end

Then(/^I follow My Info$/) do
  if @browser.link(:text => 'My info').visible?
    @browser.link(:text => 'My info').click
  end
end

Then(/^I should see My Seller's Info$/) do
  Watir::Wait.until(60) {@browser.text.include? "My Seller's Info"}
end

Then(/^I follow My Seller's Info$/) do
  if @browser.link(:text => "My Seller's Info").visible?
    @browser.link(:text => "My Seller's Info").click
  end
end

Then(/^I should see Log Out$/) do
  Watir::Wait.until(60) {@browser.text.include? "Log Out"}
end

Then(/^I follow Log Out$/) do
  if @browser.link(:text => "Log Out").visible?
    @browser.link(:text => "Log Out").click
  end
end

Then(/^I should see SIGN UP$/) do
  Watir::Wait.until(60) {@browser.text.include? "SIGN UP"}
end

Then(/^I follow SIGN UP$/) do
   if @browser.link(:text => "SIGN UP").visible?
    @browser.link(:text => "SIGN UP").click
  end
end

Then(/^I fill name with Wrong Credentials$/) do
  @browser.text_field(:name => 'fullname').set 'Wrong Credentials'
end

Then(/^I fill password with test(\d+)$/) do |arg1|
  @browser.text_field(:name => 'password').set 'test123'
end

Then(/^I fill confirm password with test(\d+)$/) do |arg1|
  @browser.text_field(:name => 'passwordConfirm').set 'test123'
end

Then(/^I Sign up$/) do
  @browser.input(:id => 'signup').click
end

Then(/^I should see Enter a valid email address\.$/) do
  Watir::Wait.until(60) {@browser.text.include? "Enter a valid email address"}
end

Then(/^I fill name with Right Credentials$/) do
  @browser.text_field(:name => 'fullname').set 'Right Credentials'
end

Then(/^I fill email with something(\d+)@something\.com$/) do |arg1|
  @browser.text_field(:name => 'email').set 'something1234@something.com'
end

Then(/^I fill email with something(\d+)@something\.net$/) do |arg1|
  @browser.text_field(:name => 'email').set 'something1234@something.net'
end

Then(/^I fill password with Metest(\d+)$/) do |arg1|
  @browser.text_field(:name => 'password').set 'Metest123'
end

Then(/^I fill secondary password with Metest(\d+)$/) do |arg1|
  @browser.text_field(:name => 'passwordConfirm').set 'Metest123'
end

Then(/^I should be logged in with the newly created account$/) do
  Watir::Wait.until(60) {@browser.text.include? 'Hi Right'} 
end

Then(/^I should see Guest Checkout$/) do
  Watir::Wait.until(60) {@browser.text.include? 'Guest Checkout'} 
end

Then(/^I should see Hi Right$/) do
  Watir::Wait.until(60) {@browser.text.include? 'Hi Right'}
end

Then(/^I should see Events to Attend$/) do
  Watir::Wait.until(60) {@browser.text.include? 'EVENTS TO ATTEND'} 
end

Then(/^I should see Selling Tickets$/) do
  Watir::Wait.until(60) {@browser.text.include? 'SELLING TICKETS'} 
end

Then(/^I should see My Profile$/) do
  Watir::Wait.until(60) {@browser.text.include? 'MY PROFILE'} 
end

Then(/^I should see Hi Remus$/) do
  Watir::Wait.until(60) {@browser.text.include? 'Hi Remus'} 
end

Then(/^I follow Admin Panel$/) do
  @browser.link(:text => 'Admin Panel').click
  sleep 5
end

Then(/^I press admin tool Site Settings$/) do
  @browser.a(:class => 'ajax-link',:index => 0).click
  sleep 5
end

Then(/^I should see Users Managing$/) do
  Watir::Wait.until(60) {@browser.text.include? 'Users Managing'}
end

Then(/^I follow Users Managing$/) do
    Watir::Wait.until(60) {@browser.link(:text => "Users Managing").visible?}
    @browser.link(:text => "Users Managing").click
end

Then(/^I search for previously created user accounts$/) do
  @browser.div(:id => 'site_settings_filter').text_field.set 'Credentials'
  Watir::Wait.until(60) {@browser.text.include? 'Right'}
end

Then(/^I retrieve the found accounts$/) do
  acc = @browser.element(:id => 'change_results').text
  puts acc
end

Then(/^I delete the first test account$/) do
  @browser.element(:id => 'change_results').a(:index => 0).click
  sleep 3
  @browser.button(:text => 'Delete user').click
  @browser.alert.ok
  sleep 3
end

Then(/^I delete the second test account$/) do
  @browser.element(:id => 'change_results').a(:index => 0).click
  sleep 3
  @browser.button(:text => 'Delete user').click
  @browser.alert.ok
  sleep 3
end
