Given(/^I am testing E\-Tickets Features on Fanxchange$/) do
  begin
  @browser.goto "https://devteam:xkc2nXV8@staging.www.fanxchange.com"
rescue => e
  puts "Connection Timeout from server side"
 end
end

Then(/^I use I’ll deliver the tickets electronically\. \(PDF format\)$/) do
  Watir::Wait.until {@browser.radio(:id => 'ticket_deails_eticket').visible?}
  @browser.radio(:id => 'ticket_deails_eticket').set
end

Then(/^I check E\-Tickets filter$/) do
 if @browser.checkbox(:id => 'eTicketFilter').visible?
    @browser.checkbox(:id => 'eTicketFilter').set
  end
end

Then(/^I should see my order number ID$/) do
  sek = @browser.h3.text
  puts sek
end

Then(/^I save order number ID for use with admin confirmation$/) do
  content = @browser.h3(:text => /#/)
  File.open("order-number.txt", "w") {|file| file.puts content.text}
end

Then(/^I search for the last order placed by buyer\-wat$/) do
  prevorder = read_var("order-number.txt", 0, 18, 23)
  if @browser.text_field(:name => 'mask_id').exists?
    @browser.text_field(:name => 'mask_id').set prevorder
  end
  @browser.send_keys :enter
end

Given(/^I am testing Confirm Features on Admin Portal$/) do
  @browser.goto "http://staging.admin.fanxchange.com/"
  @browser.text_field(:name => 'email_address').set 'remus.copil@voicemailtel.com'
  @browser.text_field(:name => 'password').set 'dontletmedown123'
  @browser.button(:value => 'Submit').click
  @browser.element(:text => 'Login Panel').wait_while_present
end

Then(/^I should be logged in on the Admin Portal$/) do
  Watir::Wait.until(60) {@browser.text.include? 'Logged in'}
end

Then(/^I follow Orders$/) do
  @browser.link(:text => 'Orders').click
end

Then(/^I should see E\-Ticket Order Pending!$/) do
  Watir::Wait.until {@browser.text.include? 'E-Ticket Order Pending!'}
end

Then(/^I Approve the Order$/) do
  @browser.element(:class => 'buttonSubmit', :index => 2).click
end

Then(/^I should see Order has been approved and sent to the seller for confirmation$/) do
  Watir::Wait.until {@browser.text.include? 'Order has been approved and sent to the seller for confirmation'}
  File.delete("order-number.txt")
end

Then(/^I should see Select Your E\-Tickets for upload$/) do
  Watir::Wait.until {@browser.text.include? 'Select Your E-Tickets for upload'}
end

Then(/^I upload e\-ticket$/) do
  local_file = '/Users/remus/Work/wat-framework/wat.code/fanxchange/eticket.pdf'
  @browser.file_field(:id => /tryIt_/).set local_file
end

Then(/^I upload$/) do
  @browser.button(:id => /upload_/).click
end

Then(/^I should see E\-Ticket Link$/) do
  link = @browser.a(:class => /download_now/).attribute_value('href')
  puts link
end

Then(/^I should be able to download e\-ticket$/) do
  @browser.a(:class => /download_now/).click
end

Then(/^I should see The maximum number of tickets you can upload$/)
  Watir::Wait.until(60) {@browser.text.include? 'The maximum number of tickets you can upload'}
end
