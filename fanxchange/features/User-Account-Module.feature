@fanx1.6 @suite @user
Feature: Valid Login credentials

        @login
		Scenario: As a user , I should be able to login with the correct credentials.
			Given I am on Fanxchange
			Then  I should see "Tickets to any live event in one search"
			And   I follow "SIGN IN"
			And   I fill in "email inputError" with "wattest3@gmail.com"
			And   I fill in "passwordL inputError" with "testme2012"
			And   I press "Sign in"
			And   I wait for element "dropdown-toggle"
			Then  I follow "Hi Wat"
			And   I should see "Hi Wat"

			Scenario: As a user , I should be able to see and access the menu options 
				Given I am logged in as "wattest3@gmail.com" with password "testme2012"
				Then  I should see "Hi Wat"
				Then  I press "Hi Wat" button with xpath "//*[@id='closepls']/div[1]/div/div/div/div/div/ul/li/a"
				And   I should see "EVENTS TO ATTEND"
				Then  I should see "My Orders"
				Then  I press "My Orders" button with xpath "//*[@id='closepls']/div[1]/div/div/div/div/div/ul/li/ul/li[2]/a"
				Then  I should be on "account/ticketspurchased"
				And   I should see "Order #"
				And   I should see "Event"
				And   I should see "Event Date"
				
				Then  I press "Hi Wat" button with xpath "//*[@id='closepls']/div[1]/div/div/div/div/div/ul/li/a"
            	And   I should see "SELLING TICKETS"
				Then  I should see "My Tickets for Sale"
				And   I press "My Tickets for Sale" button with xpath "//*[@id='closepls']/div[1]/div/div/div/div/div/ul/li/ul/li[4]/a"
            	Then  I should be on "account/ticketssale"
       	
            	Then  I press "Hi Wat" button with xpath "//*[@id='closepls']/div[1]/div/div/div/div/div/ul/li/a"
				Then  I should see "My Tickets Sold"
				And   I press "My Tickets Sold" button with xpath "//*[@id='closepls']/div[1]/div/div/div/div/div/ul/li/ul/li[5]/a"
				Then  I should be on "account/ticketssold"
	
				Then  I press "Hi Wat" button with xpath "//*[@id='closepls']/div[1]/div/div/div/div/div/ul/li/a"
				Then  I should see "My Expired Tickets"
				And   I press "My Expired Tickets" button with xpath "//*[@id='closepls']/div[1]/div/div/div/div/div/ul/li/ul/li[6]/a"
				Then  I should be on "account/ticketsunsold"
                                                      
				Then  I press "Hi Wat" button with xpath "//*[@id='closepls']/div[1]/div/div/div/div/div/ul/li/a"
				Then  I should see "Payment"
				And   I press "Payment" button with xpath "//*[@id='closepls']/div[1]/div/div/div/div/div/ul/li/ul/li[7]/a"
				And   I should be on "account/cashoutactive"

				Then  I press "Hi Wat" button with xpath "//*[@id='closepls']/div[1]/div/div/div/div/div/ul/li/a"
				And   I should see "MY PROFILE"
				Then  I should see "My Info"
				And   I press "My Info" button with xpath "//*[@id='closepls']/div[1]/div/div/div/div/div/ul/li/ul/li[9]/a"
				And   I should be on "account/profile"

				Then  I press "Hi Wat" button with xpath "//*[@id='closepls']/div[1]/div/div/div/div/div/ul/li/a"
				Then  I should see "My Seller's Info"
				And   I press "My Seller's Info" button with xpath "//*[@id='closepls']/div[1]/div/div/div/div/div/ul/li/ul/li[10]/a"

				Then  I press "Hi Wat" button with xpath "//*[@id='closepls']/div[1]/div/div/div/div/div/ul/li/a"
				And   I should see "Log Out"
				And   I press "Log Out" button with xpath "//*[@id='closepls']/div[1]/div/div/div/div/div/ul/li/ul/li[12]/a"
				Then  I should see "SIGN IN"

 		Scenario: Create new account with invalid credentials
			Given I am on Fanxchange
			Then  I press "SIGN UP" button with xpath "//*[@id='closepls']/div[1]/div/div/div/div/ul[1]/li/a"
			And   I fill in "fullname" with "Wrong Credentials"
			Then  I press "SIGN UP" button with xpath "//*[@id='closepls']/div[1]/div/div/div/div/ul[1]/li/a"
			And   I fill in "email" with "something"
			And   I fill in "passwordReg inputError" with "test123"
			And   I fill in "passwordRegConfirm inputError" with "test123"
			And   I press "Sign up" button with xpath "//*[@id='signup']"
			Then  I should see "Enter a valid email address."
        
	    Scenario: Create new account with valid credentials
			Given I am on Fanxchange
			Then  I press "SIGN UP" button with xpath "//*[@id='closepls']/div[1]/div/div/div/div/ul[1]/li/a"
			And   I fill in "fullname" with "Right Credentials"
			Then  I press "SIGN UP" button with xpath "//*[@id='closepls']/div[1]/div/div/div/div/ul[1]/li/a"
			And   I fill in "email" with "something123@something.com"
			And   I fill in "passwordReg inputError" with "Metest123"
			And   I fill in "passwordRegConfirm inputError" with "Metest123"
			And   I press "Sign up" button with xpath "//*[@id='signup']"
			Then  I wait for "login" element
         
		 Scenario: Guest Checkout
			Given I am on Fanxchange
			Then  I press "GET TICKETS" button with xpath "//*[@id='ticket-container']/div/div[1]/ul/div[1]/div[2]/div[2]/a"
			Then  I press "GO" button with xpath "//*[@id='InventoryContainer']/div[2]/div/table/tbody/tr[1]/td[2]/div[2]/input"
			Then  I should see "Guest Checkout"	
        
		Scenario: Verify My orders page displays correctly for newly created account
			Given I am on Fanxchange
			Then  I press "SIGN UP" button with xpath "//*[@id='closepls']/div[1]/div/div/div/div/ul[1]/li/a"
			And   I fill in "fullname" with "Right Credentials"
			Then  I press "SIGN UP" button with xpath "//*[@id='closepls']/div[1]/div/div/div/div/ul[1]/li/a"
			And   I fill in "email" with "something673@something.com"
			And   I fill in "passwordReg inputError" with "Metest123"
			And   I fill in "passwordRegConfirm inputError" with "Metest123"
			And   I press "Sign up" button with xpath "//*[@id='signup']"
			Then  I press "Hi Right" button with xpath "//*[@id='closepls']/div[1]/div/div/div/div/div/ul/li/a"
			And   I press "My Orders" button with xpath "//*[@id='closepls']/div[1]/div/div/div/div/div/ul/li/ul/li[2]/a"
			Then  I should be on "account/ticketspurchased"
			Then  I press "Hi Right" button with xpath "//*[@id='closepls']/div[1]/div/div/div/div/div/ul/li/a"
			Then  I should see "My Account"
			Then  I should see "Events to Attend"
    		Then  I should see "My Orders"
    		Then  I should see "Selling Tickets"
    		Then  I should see "My Tickets for Sale"
        	Then  I should see "My Tickets Sold"
    		Then  I should see "My Expired Tickets"
    		Then  I should see "Payment"
    		Then  I should see "My Profile"
    		Then  I should see "My Info"
    		Then  I should see "My Seller's Info"

    	Scenario: Guest Checkout
    		Given I am on Fanxchange
			Then  I press "GET TICKETS" button with xpath "//*[@id='ticket-container']/div/div[1]/ul/div[1]/div[2]/div[2]/a"
			Then  I press "GO" button with xpath "//*[@id='InventoryContainer']/div[2]/div/table/tbody/tr[1]/td[2]/div[2]/input"
			Then  I should see "Guest Checkout"