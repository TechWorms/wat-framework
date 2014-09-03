@fanx1.8 @etickets
Feature: E-Tickets
        
        
		Scenario: Upload e-tickets equal with the maximum quantity allowed
			Given I am logged in as "wattest3@gmail.com" with password "testme2012"
			And   I wait for "pageload" element
			Then  I press "Hi Wat" button with xpath "//*[@id='closepls']/div[1]/div/div/div/div/div/ul/li/a"
			And   I press "My Tickets Sold" button with xpath "//*[@id='closepls']/div[1]/div/div/div/div/div/ul/li/ul/li[5]/a"
			And   I should see list of tickets sold
			Then  I press "View" button with xpath "//*[@id='event_container']/tr[1]/td[9]/button"
			Then  I attach the file "eticket1.pdf" to "#browse_25927"
			And   I press "Upload" button with xpath "//*[@id='upload_26093']"
			And   I press "View" button with "//*[@id='event_container']/tr[1]/td[9]/button"
			Then  I should see E-Ticket link 
        

        Scenario: Upload more e-tickets than the maxium number allowed
			Given I am logged in as "wattest3@gmail.com" with password "testme2012"
			Then  I follow "Hi Wat"
			And   I follow "My Tickets Sold"
			And   I should see list of tickets sold
			Then  I follow "View"
			Then  I attach the files "eticket1.pdf","eticket2.pdf" to "#browse_25927"
			And   I follow "Upload"
			And   I should see "Maximum number of tickets to upload has been exceeded"
	    

	    Scenario: Open E-Ticket Link
			Given I am logged in as "wattest3@gmail.com" with password "testme2012"
			Then  I follow "Hi Wat"
			And   I follow "My Tickets Sold"
			And   I should see list of tickets sold
			Then  I follow "View"
			Then  I should see E-Ticket link 
			Then  I follow E-Ticket link
			Then  I should be on "e-ticket" page
    

		Scenario: Download E-ticket
			Given I am logged in as "wattest4@gmail.com" with password "testme2012"
			Then  I press "Hi Tester" button with xpath "//*[@id='closepls']/div[1]/div/div/div/div/div/ul/li/a"
			And   I should see "EVENTS TO ATTEND"
			Then  I should see "My Orders"
			Then  I press "My Orders" button with xpath "//*[@id='closepls']/div[1]/div/div/div/div/div/ul/li/ul/li[2]/a"
			Then  I should be on "account/ticketspurchased"
            Then  I should see list of tickets bought
			Then  I should see "Download eTicket"
			Then  I follow "Download eTicket"

			Scenario: Sell E-Tickets
					Given I am logged in as "wattest3@gmail.com" with password "testme2012"
					Then  I press "MLB" button with xpath "//*[@id='closepls']/div[1]/div/div/div/ul/li[2]/a"
					Then  I press "Toronto Blue Jays" button with xpath "//*[@id='closepls']/div[1]/div/div/div/ul/li[2]/ul/li[27]/a"
					Then  I wait for "performerpage" element
					Then  I should be on "toronto-blue-jays-tickets"
					Then  I press "Home" button with xpath "//*[@id='home']"
					Then  I press "Sell Tickets" button with xpath "//*[@id='teamSchedule']/div[1]/div/div[4]/div[2]/div[1]/a"
					And   I should see "A few details we'll need to know."
					Then  I press "Yes, I have already the tickets" button with xpath "//*[@id='have_ticket_radio_yes']"
					Then  I press "I’ll deliver the tickets electronically. (PDF format)" button with xpath "//*[@id='ticket_deails_eticket']"
					Then  I press "General Admission" button with xpath "//*[@id='general_admission']"
					Then  I fill in "quantity_details" with "1"
					Then  I press "Sell in multiples of" button with xpath "//*[@id='multiple_of_radio']"
					And   I press "GO TO STEP 3" button with xpath "//*[@id='ticket_details_form']/div[2]/div/div/input"
					And   I should see "It's your call. Set your rates!"
					Then  I fill in "price[]" with "9.99"
					Then  I fill in "sale_end[]" with "08012014"
					Then  I press "GO TO STEP 4" button with xpath "//*[@id='submit_form']"
					Then  I should see "And now, for the best part. Tell us how to pay you!"
					Then  I fill in "seccode" with "123"
					Then  I press "GO TO STEP 5" button with xpath "//*[@id='next']"
					Then  I check "confirm"
					Then  I press "LIST TICKETS" button with xpath "//*[@id='go_to_confirmation']"
					And   I should see "CONGRATULATIONS! Your ticket(s) is/are listed!"
					Then  I check my payout


			Scenario: Buy
					Given I am logged in as "wattest4@gmail.com" with password "testme2012"
					Then  I press "MLB" button with xpath "//*[@id='closepls']/div[1]/div/div/div/ul/li[2]/a"
					Then  I press "Toronto Blue Jays" button with xpath "//*[@id='closepls']/div[1]/div/div/div/ul/li[2]/ul/li[27]/a"
					Then  I wait for "performerpage" element
					Then  I should be on "toronto-blue-jays-tickets"
					Then  I press "Home" button with xpath "//*[@id='home']"
					Then  I press "GET TICKETS" button with xpath "//*[@id='teamSchedule']/div[1]/div/div[4]/div[2]/div[2]/a"
					Then  I check "eTicketFilter"
					And   I select "1" from "TicketQuantity"
					Then  I press "GO" button with xpath "//*[@id='InventoryContainer']/div[2]/div/table/tbody/tr[5]/td[2]/div[2]/input"
					Then  I should see "Step 1 - Order Form"
					Then  I fill in "cardnumber" with "4111111111111111"
					Then  I fill in "nameoncard" with "Remus Copil"
					Then  I select "11" from "exp_month"
					Then  I select "22" from "exp_year"
					Then  I fill in "seccode" with "123"
					Then  I press "PROCEED TO CHECKOUT" button with xpath "//*[@id='submitCheckout']"
					Then  I press "Agree" button with xpath "//*[@id='agree']"
				    And   I press "ORDER TICKETS" button with xpath "//div[1]/div/div[2]/div/div[2]/div/input"
				    And   I should see "Thank you for placing your order with FanXchange."
				    Then  I should see my order number ID
            

			Scenario: Confirm E-Ticket On The Admin Portal
		    		Given I am on "https://staging.admin.fanxchange.com"
		    		And   I fill in "email_address" with "remus.copil@voicemailtel.com"
		    		And   I fill in "password" with "dontletmedown123"
		    		Then  I press "Submit" button with xpath "//*[@id='loginpanel']/table/tbody/tr[3]/td/input"
		    		Then  I follow "Orders"
		    		Then  I should be on "orders.php"
		    		Then  I search for the last order placed by buyer-wat
		    		Then  I should see "E-Ticket Order Pending!"
		    		And   I press "Approve Order" button with xpath "//*[@id='midWrapper']/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr[5]/td/a[1]/span"
		    		And   I should see "Order has been approved and sent to the seller for confirmation"
            

		    Scenario: Confirm E-Ticket from Seller Account and Upload E-Ticket
		    		Given I am logged in as "wattest3@gmail.com" with password "testme2012"
		    		Then  I press "Hi Wat" button with xpath "//*[@id='closepls']/div[1]/div/div/div/div/div/ul/li/a"
			        Then  I should see "My Tickets Sold"
			        And   I press "My Tickets Sold" button with xpath "//*[@id='closepls']/div[1]/div/div/div/div/div/ul/li/ul/li[5]/a"
			        Then  I should be on "account/ticketssold"
			        And   I should see list of tickets sold
			        Then  I press "View" button with xpath "//*[@id='ticketsold']/tbody[1]/tr[1]/td[9]/button"
			        Then  I should see "Cancel Sale"
			        Then  I press "Confirm" button with xpath "//div[1]/div/div[2]/div[2]/div/div/table/tbody/tr[2]/td/div/div[3]/div[2]/div/div/button"
			        Then  I should see "Select Your E-Tickets for upload"

	
                Scenario: Test Upload Module
                               Given I am logged in as "wattest3@gmail.com" with password "testme2012"
                                Then  I press "Hi Wat" button with xpath "//*[@id='closepls']/div[1]/div/div/div/div/div/ul/li/a"
                                Then  I should see "My Tickets Sold"
                                And   I press "My Tickets Sold" button with xpath "//*[@id='closepls']/div[1]/div/div/div/div/div/ul/li/ul/li[5]/a"
                                Then  I should be on "account/ticketssold"
                                And   I should see list of tickets sold
                                Then  I press "View" button with xpath "//*[@id='ticketsold']/tbody[1]/tr[1]/td[9]/button"     
                                Then  I attach the file "/tmp/eticket.pdf" to "tryIt_29480"
			        			Then  I press "Upload" button with xpath "//*[@id='upload_29480']"
