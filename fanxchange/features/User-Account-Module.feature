@user @suite
Feature: Valid Login credentials

	        
			Scenario: As a user , I should be able to login with the correct credentials.
				Given I am on Fanxchange
				Then  I should see "Tickets to any live event in one search"
				And   I follow "SIGN IN"
				And   I fill in "email inputError" with "wattest3@gmail.com"
				And   I fill in "passwordL inputError" with "testme2012"
				And   I press "Sign in"
				And   I should see "Hi Seller"

			Scenario: As a user , I should be able to see and access the menu options 
				Given I am on Fanxchange
				Then  I should see "Tickets to any live event in one search"
				And   I follow "SIGN IN"
				And   I fill in "email inputError" with "wattest3@gmail.com"
				And   I fill in "passwordL inputError" with "testme2012"
				And   I press "Sign in"
				And   I should see "Hi Seller"
				Then  I follow "Hi Seller"
				And   I should see "EVENTS TO ATTEND"
				Then  I should see "My Orders"
				Then  I follow "My Orders"
				Then  I should see "My Orders"
				And   I should see "Order #"
				And   I should see "Event"
				And   I should see "Event Date"
				
				Then  I follow "Hi Seller" 
            	And   I should see "SELLING TICKETS"
				Then  I should see "My Tickets for Sale"
				And   I follow "My Tickets for Sale"
            	Then  I should see "My Tickets for Sale"
       	
            	Then  I follow "Hi Seller"
				Then  I should see "My Tickets Sold"
				And   I follow "My Tickets Sold"
				Then  I should see "My Tickets Sold"
	
				Then  I follow "Hi Seller"
				Then  I should see "My Expired Tickets"
				And   I follow "My Expired Tickets"
				Then  I should see "My Expired Tickets"
                                                      
				Then  I follow "Hi Seller"
				Then  I should see "Payment"
				And   I follow "Payment"
				And   I should see "Payment"

				Then  I follow "Hi Seller"
				And   I should see "MY PROFILE"
				Then  I should see "My Info"
				And   I follow "My Info"
				And   I should see "My Info"

				Then  I follow "Hi Seller"
				Then  I should see "My Seller's Info"
				And   I follow "My Seller's Info"
				Then  I should see "My Seller's Info"
				Then  I follow "Hi Seller"
				And   I should see "Log Out"
				And   I follow "Log Out"
				Then  I should see "SIGN IN"

 		Scenario: Create new account with invalid credentials
			Given I am on Fanxchange
			Then  I should see "SIGN UP"
			Then  I follow "SIGN UP"
			And   I fill in "inputError" with "Wrong Credentials"
			And   I fill in "passwordReg inputError" with "test123"
			And   I fill in "passwordRegConfirm inputError" with "test123"
			And   I press "Sign up"
			Then  I should see "Enter a valid email address."
        
	    Scenario: Create new account with valid credentials
			Given I am on Fanxchange
			Then  I should see "SIGN UP"
			Then  I follow "SIGN UP"
			And   I fill in "inputError" with "Right Credentials"
			And   I fill in "emailReg inputError" with "something1234@something.com"
			And   I fill in "passwordReg inputError" with "Metest123"
			And   I fill in "passwordRegConfirm inputError" with "Metest123"
			And   I press "Sign up"
			Then  I should see "Hi Right"
         
		 Scenario: Guest Checkout
			Given I am on Fanxchange
			Then  I should see "Upcoming Events"
		    Then  I go to the 3 displayed event
		    Then  I should see "tickets available"
			Then  I press "Go"
			Then  I should see "Guest Checkout"
        
		Scenario: Verify My orders page displays correctly for newly created account
			Given I am on Fanxchange
			Then  I should see "SIGN UP"
			Then  I follow "SIGN UP"
			And   I fill in "inputError" with "Right Credentials"
			And   I fill in "emailReg inputError" with "something6733@something.com"
			And   I fill in "passwordReg inputError" with "Metest123"
			And   I fill in "passwordRegConfirm inputError" with "Metest123"
			And   I press "Sign up"
			Then  I should see "Hi Right"
			Then  I follow "Hi Right" 
			And   I follow "My Orders" 
			Then  I should see "My Orders"
			Then  I follow "Hi Right"
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
        @delete
    	Scenario: Delete Payload for created test accounts
    		Given I am on Fanxchange
    		Then  I should see "SIGN IN"
    		And   I follow "SIGN IN"
			And   I fill in "email inputError" with "remus.copil@voicemailtel.com"
			And   I fill in "passwordL inputError" with "dontletmedown123"
			And   I press "Sign in"
			And   I should see "Hi Remus"
			Then  I follow "Hi Remus"
			And   I follow "Admin Panel"
			Then  I should see "Site Settings"
			And   I press admin tool Site Settings
			Then  I should see "Users Managing"
			And   I follow "Users Managing"
			Then  I search for previously created user accounts
			And   I should see "Right"
			Then  I retrieve the found accounts
			Then  I delete the test accounts 2
			Then  I should see "Are you sure you want to delete this user?"
			Then  I press "Delete user"
			Then  I delete the test accounts 1
			Then  I should see "Are you sure you want to delete this user?"
			Then  I press "Delete user"



