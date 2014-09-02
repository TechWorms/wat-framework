@suite @perfomer
Feature: Perfomer Page / Filters / Events
            
			Scenario: Go to NHL dropdown list and choose a team :
						1. Top 30 scheduled team events are loaded in the Event Listings
						2. Schedule button is "pressed" by default
						3. Load More button is displayed if there are more than 30 events
				Given I am on Fanxchange
				Then  I should see "Tickets to any live event in one search"
				And   I follow "NBA"
				Then  I follow "Toronto Raptors"
				And   I should see "Toronto Raptors tickets"
				Then  I check if perfomer has events
				Then  I there are more than 30 events , check the Load More button is present			
			
			Scenario: The event detail row contains:
						1. Date
						2. Time (TBA if is not scheduled yet)
						3. Event 
						4. City
						5. Venue 
						6. Sell Tickets  
						7. Get Tickets
				Given I am on Fanxchange
				Then  I should see "Tickets to any live event in one search"
				And   I follow "NFL"
				Then  I follow "Buffalo Bills"
			    Then  I check if tickets have Date and Time , Event Location and Venue , Sell Tickets Option , Get Tickets
			    
			Scenario: On performer page , I should be able to filter events by: Schedule , Opposing Team and Date
				Given I am on Fanxchange
				Then  I should see "Tickets to any live event in one search"
				And   I follow "NFL" 
				Then  I follow "New England Patriots"
				Then  I check if perfomer has events
				And   I press "Home"
				Then  I should see "New England Patriots vs."
				Then  I press "Away"
				And   I should see "vs. New England Patriots"
				Then  I should see an element with id "opposing_team"
				And   I select team "Minnesota Vikings" from "opposing_team"
				Then  I should see "Minnesota Vikings"
				And   I select team "Cincinnati Bengals" from "opposing_team"
				Then  I should see "Cincinnati Bengals"
				Then  I select team "Opposing Team" from "opposing_team"
				Then  I press "Schedule"
				Then  I press "Date" filter
				And   I fill in "from" with "11012014"
				And   I fill in "to" with "11302014"
				Then  I press " Refine Search "
				Then  I should see "Nov"