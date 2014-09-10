
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

Then(/^I login as a Buyer$/) do
  @browser.link(:text => 'SIGN IN').click
  @browser.text_field(:class => 'emailL_field').set 'wattest4@gmail.com'
  @browser.text_field(:class => 'passwordL_field').set 'testme2012'
  @browser.button(:value => 'Sign in').click
  @browser.div(:id => 'loginBox').wait_while_present
end

Then(/^I should be logged in and see Hi Buyer$/) do
  Watir::Wait.until {@browser.text.include? 'Hi Buyer'}
  Watir::Wait.until {@browser.i(:class => 'icon-user').present?}
end

Then(/^I login as a Broker$/) do
  @browser.link(:text => 'SIGN IN').click
  @browser.text_field(:class => 'emailL_field').set 'remus.copil@voicemailtel.com'
  @browser.text_field(:class => 'passwordL_field').set 'dontletmedown123'
  @browser.button(:value => 'Sign in').click
  @browser.div(:id => 'loginBox').wait_while_present
end

Then(/^I should be logged in and see Hi Remus$/) do
  Watir::Wait.until {@browser.text.include? 'Hi Remus'}
  Watir::Wait.until {@browser.i(:class => 'icon-user').present?}
end

Given(/^I login with Fanxchange Confirmation E\-mail Address$/) do
  @browser.goto "http://www.gmail.com"
  @browser.text_field(:id => 'Email').set 'fanxchangedev@gmail.com'
  @browser.text_field(:id => 'Passwd').set 'f@nxchang3'
  @browser.input(:id => 'signIn').click
  sleep 5
end