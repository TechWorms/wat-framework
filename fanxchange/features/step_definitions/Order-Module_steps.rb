Given(/^I am testing Order Features on Fanxchange$/) do
  begin
  @browser.goto "https://devteam:xkc2nXV8@staging.www.fanxchange.com"
rescue => e
  puts "Connection Timeout from server side"
 end
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
    @browser.div(:class => 'action', :index => 0).a.click    
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
  @browser.text_field(:id => 'cardnumber').set '4111111111111111'
end

Then(/^I user name on card: Remus Copil$/) do
  @browser.text_field(:id => 'nameoncard').set 'Remus Copil'
end

Then(/^I use expiry month: November$/) do
  @browser.select_list(:id => 'exp_month').select '11'
end

Then(/^I use expiry year: (\d+)$/) do |arg1|
  @browser.select_list(:id => 'exp_year').select '2022'
end

Then(/^I use security code: (\d+)$/) do |arg1|
  @browser.text_field(:name => 'seccode').set '123'
end

Then(/^I Proceed to checkout$/) do
  if @browser.input(:id => 'submitCheckout').visible?
  @browser.input(:id => 'submitCheckout').click
end
end

Then(/^I should see Step (\d+) \- Order Confirmation$/) do |arg1|
  Watir::Wait.until {@browser.text.include? 'Step 2 - Order Confirmation'}
end

Then(/^I use member pass code: perc(\d+)$/) do |arg1|
  @browser.text_field(:id => 'member_pass').set 'perc30'
end

Then(/^I use member pass code: freeshp$/) do
  @browser.text_field(:id => 'member_pass').set 'freeshp'
end
