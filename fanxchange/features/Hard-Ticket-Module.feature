@hardtickets @suite
Feature: Sells Hard Tickets / Buys Hard Tickets / Confirms Hard Tickets / Checks for confirmations e-mails / Creates and Prints Airbill for sold tickets
				@sell
				Scenario: Sell
					Given I am testing Hard Ticket Features on Fanxchange
					Then  Once the page is loaded
					Then  I login as a Seller
					Then  I should be logged in and see Hi Seller
					Then  I follow MLB
					Then  I follow Toronto Blue Jays
					Then  I should see Toronto Blue Jays tickets
					Then  I press Home
					Then  I should see Toronto Blue Jays vs.
					Then  I select the fifth event to sell tickets for
					Then  Once the page is loaded
					Then  I check event for which i'm selling the tickets
					Then  I should see A few details we'll need to know.
					Then  I use Yes, I have already the tickets.
					Then  I use Ship hard tickets by FedEx 
					Then  I use General Admission 
					Then  I set ticket quantity for 6
					Then  I use None, sell all my tickets together.
					And   I GO TO STEP Three
					Then  Once the page is loaded
					Then  I should see It's your call. Set your rates!
					Then  I set the price tickets I want to sell to 1.11
					Then  I set the end date of the sale to 09-01-2014
					Then  I GO TO STEP Four
					Then  Once the page is loaded
					Then  I should see And now, for the best part. Tell us how to pay you!
					Then  I use security code: 123
					Then  I GO TO STEP Five
					Then  I Confirm 
					And   I LIST TICKETS
					Then  Once the page is loaded
					Then  I should see CONGRATULATIONS! Your ticket(s) is/are listed!
					Then  I check my payout
			@buy
			Scenario: Buy
					Given I am testing Hard Ticket Features on Fanxchange
					Then  Once the page is loaded
					And   I login as a Buyer
					Then  I should be logged in and see Hi Buyer
					Then  I follow MLB
					Then  I follow Toronto Blue Jays
					Then  Once the page is loaded
					Then  I should see Toronto Blue Jays tickets
					Then  I press Home
					Then  I should see Toronto Blue Jays vs.
					Then  I select the fifth event to buy tickets for
					Then  Once the page is loaded
					Then  I select the first ticket in the list
					Then  I check event for which i'm buying the tickets
					Then  Once the page is loaded
					Then  I should see Step 1 - Order Form
					Then  I use card number: 4111111111111111
				    Then  I user name on card: Remus Copil
				    Then  I use expiry month: November
				    Then  I use expiry year: 2022
 				    Then  I use security code: 123
 				    Then  I Proceed to checkout
					Then  Once the page is loaded
					And   I should see Step 2 - Order Confirmation
					Then  I Agree to the terms and conditions
				    And   I ORDER TICKETS
				    Then  Once the page is loaded
				    Then  I should see Thank you for placing your order with FanXchange.
			@confirm
			Scenario: Confirm Order
					Given I am testing Hard Ticket Features on Fanxchange
					Then  Once the page is loaded
					Then  I login as a Seller
					Then  I should be logged in and see Hi Seller
					Then  I go to user drop down menu
			        Then  I should see My Tickets Sold
			        And   I follow My Tickets Sold
			        Then  I should be on My Tickets Sold page
			        And   I should see list of tickets sold
			        Then  I press open details for the last ticket sold
			        And   I should see two options: Cancel and Confirm
			        Then  I Confirm the ticket
			        Then  Once the page is loaded
			        Then  My order should be confirmed

			Scenario: Create and Print Airbill
					Given I am testing Hard Ticket Features on Fanxchange
					Then  Once the page is loaded
					Then  I login as a Seller
					Then  I should be logged in and see Hi Seller
			        Then  I go to user drop down menu
			        Then  I should see My Tickets Sold
			        And   I follow My Tickets Sold
			        Then  Once the page is loaded
			        Then  I should be on My Tickets Sold page
			        And   I should see list of tickets sold
			        Then  I press open details for the last ticket sold
			        Then  I set the airbil date to 11-02-2014			   
			        Then  I Create the Airbill
			        Then  I press open details for the last ticket sold
			        And   I should see the Tracking number of the order
			        Then  I Print the Airbill

			Scenario: Asses order e-mail confirmation
					Given I login with Fanxchange Confirmation E-mail Address
					Then  Once the page is loaded
					Then  I should see My Inbox
					And  I check for order confirmation e-mail
					And  I check for tickets sent confirmation e-mail
                
				Scenario: Users cannot Create Airbill for cancelled orders
					Given I am testing Hard Ticket Features on Fanxchange
					Then  Once the page is loaded
					Then  I login as a Seller
					Then  I go to user drop down menu
			        Then  I should see My Tickets Sold
			        And   I follow My Tickets Sold
			        Then  Once the page is loaded
			        Then  I should be on My Tickets Sold page
			        Then  I should see "Status Processed"
			       

		