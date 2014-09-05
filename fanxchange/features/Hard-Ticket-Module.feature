@hardtickets @suite
Feature: Hard Tickets
				@tk
				Scenario: Sell
					Given I am on Fanxchange
					And   I login as seller
					Then  I should see "Hi Seller"
					Then  I follow "MLB"
					Then  I follow "Toronto Blue Jays"
					Then  I should see "Toronto Blue Jays tickets"
					Then  I press "Home"
					Then  I should see "Toronto Blue Jays vs."
					Then  I sell tickets for the 5 event
					And   I should see "A few details we'll need to know."
					Then  I select Yes, I have already the tickets.
					Then  I select Ship hard tickets by FedEx 
					Then  I select General Admission 
					Then  I fill in "quantity_details" with "4"
					Then  I select None, sell all my tickets together.
					And   I click "GO TO STEP 3"
					And   I should see "It's your call. Set your rates!"
					Then  I set the price for the tickets to "1.40"
					Then  I set the end date of the sale to "09012014"
					Then  I click "GO TO STEP 4"
					Then  I should see "And now, for the best part. Tell us how to pay you!"
					Then  I set security code with "123"
					Then  I click "GO TO STEP 5"
					Then  I check "confirm"
					Then  I click "LIST TICKETS"
					And   I should see "CONGRATULATIONS! Your ticket(s) is/are listed!"
					Then  I check my payout
			@td
			Scenario: Buy
					Given I am on Fanxchange
					And   I login as buyer
					Then  I should see "Hi Buyer"
					Then  I follow "MLB" 
					Then  I follow "Toronto Blue Jays"
					Then  I should see "Toronto Blue Jays tickets"
					Then  I press "Home"
					Then  I should see "Toronto Blue Jays vs."
					Then  I go to the 4ls displayed event
					Then  I should see "1475 tickets available"
					Then  I press "Go"
					Then  I should see "Step 1 - Order Form"
					Then  I fill in "cardnumber" with "4111111111111111"
					Then  I fill in "nameoncard" with "Remus Copil"
					Then  I select "11" from "exp_month"
					Then  I select "22" from "exp_year"
					Then  I fill in "seccode" with "123"
					Then  I click "PROCEED TO CHECKOUT"
					Then  I check "Agree"
				    And   I click "ORDER TICKETS"
				    And   I should see "Thank you for placing your order with FanXchange."

			Scenario: Confirm Order
					Given I am on Fanxchange
					And   I login as seller
	                Then  I follow "Hi Wat"
			        Then  I should see "My Tickets Sold"
			        And   I follow "My Tickets Sold"
			        Then  I should be on "account/ticketssold"
			        And   I should see list of tickets sold
			        Then  I press "View"
			        Then  I should see "Cancel Sale"
			        And   I should see "Confirm"
			        Then  I press "Confirm"
			        Then  I should see "Processed"

			Scenario: Create and Print Airbill
					Given I am logged in as "wattest3@gmail.com" with password "testme2012"
	                Then  I press "Hi Wat" button with xpath "//*[@id='closepls']/div[1]/div/div/div/div/div/ul/li/a"
			        Then  I should see "My Tickets Sold"
			        And   I press "My Tickets Sold" button with xpath "//*[@id='closepls']/div[1]/div/div/div/div/div/ul/li/ul/li[5]/a"
			        Then  I should be on "account/ticketssold"
			        And   I should see list of tickets sold
			        Then  I press "View" button with xpath "//*[@id='ticketsold']/tbody[1]/tr[1]/td[9]/button"
			        Then  I fill in "waybill_create" with "07142014"			   
			        Then  I press "Create AirBill" button with xpath "//div[1]/div/div[2]/div[2]/div/div/table/tbody/tr[2]/td/div/div[3]/div[2]/div/form/button"
			        Then  I press "View" button with xpath "//*[@id='ticketsold']/tbody[1]/tr[1]/td[9]/button"
			        And   I should see "Tracking #:"
			        Then  I press "Print Airbill" button with xpath "//div[1]/div/div[2]/div[2]/div/div/table/tbody/tr[2]/td/div/div[3]/div[2]/div/div/button"

			Scenario: Asses order e-mail confirmation
					Given I navigate to "http://gmail.com"
					Then  I fill in "Email" with "fanxchangedev@gmail.com"
					And   I fill in "Passwd" with "f@nxchang3"
					Then  I press "signIn"
					And   I should see "Inbox"
					Then  I should see "Congratulations! Your Tickets Have Been Sent."
					Then  I should see "Congratulations! Your Order Has Been Confirmed"
                
				Scenario: Users cannot Create Airbill for cancelled orders
					Given I am logged in as "wattest3@gmail.com" with password "testme2012"
	                Then  I press "Hi Wat" button with xpath "//*[@id='closepls']/div[1]/div/div/div/div/div/ul/li/a"
			        Then  I should see "My Tickets Sold"
			        And   I press "My Tickets Sold" button with xpath "//*[@id='closepls']/div[1]/div/div/div/div/div/ul/li/ul/li[5]/a"
			        Then  I should be on "account/ticketssold"
			        Then  I should see "Status Processed"
			        Then  I press "View" button with xpath "//*[@id='detailsHidden_EG912']/td/div/div[3]/div[2]/div/form/button"
			        Then  I fill in "waybill_create" with "07152014"
			        Then  I press "Create Airbill" button with xpath "//*[@id='detailsHidden_EG912']/td/div/div[3]/div[2]/div/form/button"
			        Then  I should see "Cannot create Airbill for expired tickets"

		