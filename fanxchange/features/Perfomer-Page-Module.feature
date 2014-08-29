@fanx1.3 @all @suite
Feature: Perfomer Page / Filters / Events

			Scenario: Go to NHL dropdown list and choose a team :
						1. Top 30 scheduled team events are loaded in the Event Listings
						2. Schedule button is "pressed" by default
						3. Load More button is displayed if there are more than 30 events
				Given I am on Fanxchange
				And   I press "MLB" button with xpath "//*[@id='closepls']/div[1]/div/div/div/ul/li[2]/a"
				Then  I press "Airzona Diamondbacks" button with xpath "//*[@id='closepls']/div[1]/div/div/div/ul/li[2]/ul/li[1]/a"
				And   I should be on "arizona-diamondbacks-tickets"
				Then  I check if events are available for current perfomer 				
				Then  I should see 30 "#teamSchedule div.row-fluid.tickets div.span12.margin-top-mobile-20px div.list-box" elements
				Then  I should see 2 "#load_more1" element
				
			Scenario: The event detail row contains:
						1. Date
						2. Time (TBA if is not scheduled yet)
						3. Event 
						4. City
						5. Venue 
						6. Sell Tickets  
						7. Get Tickets
				Given I am on Fanxchange
				And   I press "NFL" button with xpath "//*[@id='closepls']/div[1]/div/div/div/ul/li[1]/a"
				Then  I press "Buffalo Bills" button with xpath "//*[@id='closepls']/div[1]/div/div/div/ul/li[1]/ul/li[10]/a"
			    Then  I check if tickets have "Date and Time" defined by the element "//*[@id='teamSchedule']/div[1]/div/div[1]/div[1]/div[1]"
			    Then  I check if tickets have "Event Location and Venue" defined by the element "//*[@id='teamSchedule']/div[1]/div/div[1]/div[1]/div[2]"			    
			    Then  I check if tickets have "Sell Tickets Option" defined by the element "//*[@id='teamSchedule']/div[1]/div/div[1]/div[2]/div[1]"
			    Then  I check if tickets have "Get Tickets" defined by the element "//*[@id='teamSchedule']/div[1]/div/div[1]/div[2]/div[2]/a"
			
			Scenario: On performer page , I should be able to filter events by: Schedule , Opposing Team and Date
				Given I am on Fanxchange
				And   I press "NFL" button with xpath "//*[@id='closepls']/div[1]/div/div/div/ul/li[1]/a"
				Then  I press "New England Patriots" button with xpath "//*[@id='closepls']/div[1]/div/div/div/ul/li[1]/ul/li[23]/a"
				Then  I should see an "#toggle-filter-schedule" element
				And   I press "Home" button with xpath "//*[@id='home']"
				Then  I should see list of events for "New England Patriots vs."
				Then  I press "Away" button with xpath "//*[@id='away']"
				And   I should see list of events for "vs. New England Patriots"
				Then  I should see an "#opposing_team" element
				And   I select "Minnesota Vikings" from "opposing_team"
				Then  I should see list of events for "Minnesota Vikings"
				And   I select "Cincinnati Bengals" from "opposing_team"
				Then  I should see list of events for "Cincinnati Bengals"
				Then  I select "Opposing Team" from "opposing_team"
				Then  I press "Schedule" button with xpath "//*[@id='schedule']"
				And   I should see an "#tickets_div div.row-fluid div.span5 div.btn-group a.btn" element
				Then  I press "Date" button with xpath "//*[@id='tickets_div']/div[2]/div[3]/div[1]/a"
				And   I fill in "from" with "11012014"
				Then  I press "Date" button with xpath "//*[@id='tickets_div']/div[2]/div[3]/div[1]/a"
				And   I fill in "to" with "11302014"
				Then  I press "Refine Search"
				Then  I should see list of events for "Nov"