@suite @perfomer
Feature: Checks that perfomer has 30 displayed results and button is present when there are more than 30 events / Checks if event row contains information and Selling/Buying option / Checks filters for perfomer page
            
			Scenario: Go to NHL dropdown list and choose a team :
						
						1. Top 30 scheduled team events are loaded in the Event Listings
						2. Schedule button is "pressed" by default
						3. Load More button is displayed if there are more than 30 events

				Given I am testing Perfomer Features on Fanxchange
				Then  I should see Tickets to any live event in one search
				And   I follow NBA
				Then  I follow Toronto Raptors
				Then  Once the page is loaded
				And   I should see Toronto Raptors tickets
				Then  I check if perfomer has events
				Then  If there are more than 30 events, Load More button should be present

			Scenario: The event detail row contains:
						
						1. Date
						2. Time (TBA if is not scheduled yet)
						3. Event 
						4. City
						5. Venue 
						6. Sell Tickets  
						7. Get Tickets

				Given I am testing Perfomer Features on Fanxchange
				Then  I should see Tickets to any live event in one search
				And   I follow NFL
				Then  I follow Buffalo Bills
			    Then  I check if tickets have Date and Time , Event Location and Venue , Sell Tickets Option , Get Tickets
			@trr    
			Scenario: On performer page , I should be able to filter events by: 
						
						1. Schedule
						2. Opposing Team
						3. Date
				
				Given I am testing Perfomer Features on Fanxchange
				Then  I should see Tickets to any live event in one search
				And   I follow NFL
				Then  I follow New England Patriots
				Then  I check if perfomer has events
				And   I press Home
				Then  I should see New England Patriots vs.
				Then  I press Away
				And   I should see vs. New England Patriots
				Then  I should see Opposing Team filter
				And   I select team Minnesota Vikings as opposing team
				Then  I should see events with Minnesota Vikings
				And   I select team Cincinnati Bengals as opposing team
				Then  I should see events with Cincinnati Bengals
				Then  I reset Opposing Team filter
				Then  I press Schedule
				Then  I select the Date filter
				And   I set the from date to 11-01-2014
				And   I set the to date to 11-30-2014
				Then  I press Refine Search
				Then  I should see events displayed for November