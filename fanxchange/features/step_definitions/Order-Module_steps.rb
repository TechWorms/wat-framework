Given(/^I am testing Order Features on Fanxchange$/) do
  begin
  @browser.goto "https://devteam:xkc2nXV8@staging.www.fanxchange.com"
rescue => e
  puts "Connection Timeout from server side"
 end
end

Then(/^I login as a Seller$/) do
  @browser.link(:text => 'SIGN IN').click
  @browser.text_field(:class => 'emailL_field').set 'wattest3@gmail.com'
  @browser.text_field(:class => 'passwordL_field').set 'testme2012'
  @browser.button(:value => 'Sign in').click
  @browser.div(:id => 'loginBox').wait_while_present
end

Then(/^I should be logged in and see Hi Seller$/) do
  Watir::Wait.until {@browser.text.include? 'Hi Seller'}
  Watir::Wait.until {@browser.i(:class => 'icon-user').present?}
end

Then(/^I follow MLB$/) do
  if @browser.link(:text => 'MLB').visible?
    @browser.link(:text => 'MLB').click
  end
end

Then(/^I follow Boston Red Sox$/) do
   if @browser.link(:text => 'Boston Red Sox').visible?
    @browser.link(:text => 'Boston Red Sox').click
  end
end

Then(/^I should see Boston Red Sox tickets$/) do
  Watir::Wait.until {@browser.text.include? 'Boston Red Sox tickets'}
end

Then(/^I go to the first displayed event$/) do
  if @browser.div(:class => 'action').a.exists?
    @browser.div(:class => 'action', :index => 1).a.click    
  end
end

Then(/^I select the first ticket in the list$/) do
  if @browser.button(:class => 'btn-go').exists?
    @browser.button(:class => 'btn-go', :index => 0).click
  end
end

Then(/^I should see Step (\d+) \- Order Form$/) do |arg1|
  Watir::Wait.until {@browser.text.include? 'Step 1 - Order Form'}
end

Then(/^I should see Enter Member Pass Code$/) do
  Watir::Wait.until {@browser.text.include? 'Enter Member Pass Code'}
end

Then(/^I check my order total$/) do
  totl = @browser.p(:class => /price_total_checkout/).text
  puts totl
end

Then(/^I press Enter Member Pass Code$/) do
  @browser.div(:class => 'accordion').div.a.click
end

Then(/^I use member pass code: test(\d+)$/) do |d|
  @browser.text_field(:id => 'member_pass').set 'test70'
end

Then(/^I use card number: (\d+)$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^I user name on card: Remus Copil$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I use expiry month: November$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I use expiry year: (\d+)$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^I use security code: (\d+)$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^I Proceed to checkout$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see Step (\d+) \- Order Confirmation$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^I use member pass code: perc(\d+)$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^I use member pass code: freeshp$/) do
  pending # express the regexp above with the code you wish you had
end
