@hardtickets @suite
Feature: Hard Tickets
				@tk
				Scenario: Sell
					Given I am on Fanxchange
					And   I login as seller
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
					Then  I fill in "price_" with "1.40"
					Then  I fill in "sale_end" with "09012014"
					Then  I click "GO TO STEP 4"
					Then  I should see "And now, for the best part. Tell us how to pay you!"
					Then  I fill in "seccode" with "123"
					Then  I click "GO TO STEP 5"
					Then  I check "confirm"
					Then  I click "LIST TICKETS"
					And   I should see "CONGRATULATIONS! Your ticket(s) is/are listed!"
					Then  I check my payout

			Scenario: Buy
					Given I am logged in as "wattest4@gmail.com" with password "testme2012"
					Then  I press "MLB" button with xpath "//*[@id='closepls']/div[1]/div/div/div/ul/li[2]/a"
					Then  I press "Toronto Blue Jays" button with xpath "//*[@id='closepls']/div[1]/div/div/div/ul/li[2]/ul/li[27]/a"
					Then  I should be on "toronto-blue-jays-tickets"
					Then  I press "Home" button with xpath "//*[@id='home']"
					Then  I press "GET TICKETS" button with xpath "//*[@id='teamSchedule']/div[1]/div/div[4]/div[2]/div[2]/a"
					Then  I press "GO" button with xpath "//*[@id='InventoryContainer']/div[2]/div/table/tbody/tr[10]/td[2]/div[2]/input"
					Then  I should see "Step 1 - Order Form"
					Then  I select "1" from "quantity_checkout"
					Then  I fill in "cardnumber" with "4111111111111111"
					Then  I fill in "nameoncard" with "Remus Copil"
					Then  I select "11" from "exp_month"
					Then  I select "22" from "exp_year"
					Then  I fill in "seccode" with "123"
					Then  I press "PROCEED TO CHECKOUT" button with xpath "//*[@id='submitCheckout']"
					Then  I press "Agree" button with xpath "//*[@id='agree']"
				    And   I press "ORDER TICKETS" button with xpath "//div[1]/div/div[2]/div/div[2]/div/input"
				    And   I should see "Thank you for placing your order with FanXchange."

			Scenario: Confirm Order
					Given I am logged in as "wattest3@gmail.com" with password "testme2012"
	                Then  I press "Hi Wat" button with xpath "//*[@id='closepls']/div[1]/div/div/div/div/div/ul/li/a"
			        Then  I should see "My Tickets Sold"
			        And   I press "My Tickets Sold" button with xpath "//*[@id='closepls']/div[1]/div/div/div/div/div/ul/li/ul/li[5]/a"
			        Then  I should be on "account/ticketssold"
			        And   I should see list of tickets sold
			        Then  I press "View" button with xpath "//*[@id='ticketsold']/tbody[1]/tr[1]/td[9]/button"
			        Then  I should see "Cancel Sale"
			        Then  I press "Confirm" button with xpath "//div[1]/div/div[2]/div[2]/div/div/table/tbody/tr[2]/td/div/div[3]/div[2]/div/div/button"
			        Then  I should see "Processed" in the "#event_container tr.ticketsSaleDetail.alternate.font-12" element

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
					Given I am on "http://gmail.com"
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

		