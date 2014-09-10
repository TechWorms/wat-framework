Given(/^I am testing Hard Ticket Features on Fanxchange$/) do
 begin
  @browser.goto "https://devteam:xkc2nXV8@staging.www.fanxchange.com"
rescue => e
  puts "Connection Timeout from server side"
 end
end

Then(/^I follow Toronto Blue Jays$/) do
  if @browser.link(:text => 'Toronto Blue Jays').visible?
    @browser.link(:text => 'Toronto Blue Jays').click
  end
end

Then(/^I should see Toronto Blue Jays tickets$/) do
  Watir::Wait.until {@browser.text.include? 'Toronto Blue Jays tickets'}
end

Then(/^I should see Toronto Blue Jays vs\.$/) do
  Watir::Wait.until {@browser.text.include? 'Toronto Blue Jays vs.'}
end

Then(/^I select the fifth event to sell tickets for$/) do
  sleep 5
  Watir::Wait.until { @browser.div(:class => 'list-box').visible? }
  @browser.div(:class => 'list-box', :index => 5).a(:text => 'Sell Tickets').click
end

Then(/^I should see A few details we'll need to know\.$/) do
  Watir::Wait.until {@browser.text.include? "A few details we'll need to know."}
end

Then(/^I use Yes, I have already the tickets\.$/) do
 Watir::Wait.until  {@browser.radio(:class => 'have_ticket').visible?}
  @browser.radio(:class => 'have_ticket').set
end

Then(/^I use Ship hard tickets by FedEx$/) do
 Watir::Wait.until {@browser.radio(:id => 'ticket_deails_hardticket').visible?}
  @browser.radio(:id => 'ticket_deails_hardticket').set
end

Then(/^I use General Admission$/) do
  Watir::Wait.until {@browser.radio(:id => 'general_admission').visible?}
  @browser.radio(:id => 'general_admission').set
end

Then(/^I set ticket quantity for (\d+)$/) do |arg1|
  Watir::Wait.until {@browser.text_field(:id => 'quantity_details').visible?}
  @browser.text_field(:id => 'quantity_details').set '6'
end

Then(/^I use None, sell all my tickets together\.$/) do
 Watir::Wait.until {@browser.radio(:id => 'all_tickets_together').visible?}
  @browser.radio(:id => 'all_tickets_together').set
end

Then(/^I check event for which i'm selling the tickets$/) do
  Watir::Wait.until {@browser.div(:class => 'sidebar-fanx-content-team').visible?}
  andro = @browser.div(:class => 'sidebar-fanx-content-team').text
  puts andro
end

Then(/^I check event for which i'm buying the tickets$/) do
  Watir::Wait.until {@browser.h1.visible?}
  andro = @browser.h1.text
  andro1 = @browser.p(:class => 'subtitle').text
  puts andro
  puts andro1
end

Then(/^I GO TO STEP Three$/) do
  @browser.input(:value => 'GO TO STEP 3').click
  @browser.input(:value => 'GO TO STEP 3').wait_while_present
end

Then(/^I GO TO STEP Four$/) do
  @browser.input(:value => 'GO TO STEP 4').click
  @browser.input(:value => 'GO TO STEP 4').wait_while_present
end

Then(/^I GO TO STEP Five$/) do
  @browser.input(:value => 'GO TO STEP 5').click
  @browser.input(:value => 'GO TO STEP 5').wait_while_present
end


Then(/^I should see It's your call\. Set your rates!$/) do
  Watir::Wait.until {@browser.text.include? "It's your call. Set your rates!"}
end

Then(/^I set the price tickets I want to sell to (\d+)\.(\d+)$/) do |arg1, arg2|
  @browser.text_field(:class => 'selling_price').set '1.11'
end

Then(/^I set the end date of the sale to (\d+)\-(\d+)\-(\d+)$/) do |arg1, arg2, arg3|
  @browser.text_field(:class => 'sale_end_date').set '09102014'
end

Then(/^I should see And now, for the best part\. Tell us how to pay you!$/) do
  Watir::Wait.until {@browser.text.include? 'And now, for the best part. Tell us how to pay you!'}
end

Then(/^I Confirm$/) do
  @browser.checkbox(:id => 'confirm').set
end

Then(/^I LIST TICKETS$/) do
  if @browser.button(:value => 'LIST TICKETS').visible?
  @browser.button(:value => 'LIST TICKETS').click
end
  sleep 5
end

Then(/^I should see CONGRATULATIONS! Your ticket\(s\) is\/are listed!$/) do
  Watir::Wait.until {@browser.text.include? 'CONGRATULATIONS! Your ticket(s) is/are listed!'}
end

Then(/^I check my payout$/) do
  pyo = @browser.element(:class => 'dl-horizontal', :index => 1).text
  puts pyo
end

Then(/^I select the fifth event to buy tickets for$/) do
  sleep 5
  Watir::Wait.until { @browser.div(:class => 'list-box').visible? }
  @browser.div(:class => 'list-box', :index => 5).a(:text => 'GET TICKETS').click
end

Then(/^I Agree to the terms and conditions$/) do
  @browser.checkbox(:id => 'agree').set
end

Then(/^I ORDER TICKETS$/) do
  @browser.input(:value => 'order tickets').click
  sleep 5
end

Then(/^I should see Thank you for placing your order with FanXchange\.$/) do
  Watir::Wait.until {@browser.text.include? 'Thank you for placing your order with FanXchange.'}
end

Then(/^I go to user drop down menu$/) do
  @browser.div(:class => 'pull-right').a(:class => 'dropdown-toggle').click
  @browser.ul(:class => 'dropdown-menu myfanx-menu ').wait_until_present
end

Then(/^I should see My Tickets Sold$/) do
  Watir::Wait.until {@browser.text.include? 'My Tickets Sold'}
end

Then(/^I follow My Tickets Sold$/) do
  @browser.link(:text => 'My Tickets Sold').click
end

Then(/^I should be on My Tickets Sold page$/) do
  Watir::Wait.until {@browser.text.include? 'My Tickets Sold'}
end

Then(/^I should see list of tickets sold$/) do
  @browser.elements(:class => /ticketsSaleDetail/).each do |piki|
    puts piki.text if piki.visible?
  end
end

Then(/^I press open details for the last ticket sold$/) do
  @browser.button(:text => 'view', :index => 0).click
  @browser.element(:id => /detailsHidden/).wait_until_present
end

Then(/^I should see two options: Cancel and Confirm$/) do
  Watir::Wait.until { @browser.text.include? 'Cancel Sale' }
  Watir::Wait.until { @browser.button(:id => /confirm_/).visible? }
end

Then(/^I Confirm the ticket$/) do
  @browser.button(:id => /confirm_/).click
  @browser.button(:id => /confirm_/).wait_while_present
end

Then(/^I select Quebec from state$/) do
  @browser.select_list(:id => 'billing_state').select 'Quebec'
end

Then(/^My order should be confirmed$/) do
  Watir::Wait.until {@browser.text.include? 'Sent to Buyer'}
end

Then(/^I set the airbil date to (\d+)\-(\d+)\-(\d+)$/) do |arg1, arg2, arg3|
  pending # express the regexp above with the code you wish you had
end

Then(/^I Create the Airbill$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see the Tracking number of the order$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I Print the Airbill$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see My Inbox$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I check for order confirmation e\-mail$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I check for tickets sent confirmation e\-mail$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end
