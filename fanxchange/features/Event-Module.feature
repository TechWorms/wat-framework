@fanx2.0 @event @suite
Feature: Event Page

        
		Scenario: View From Seat
            Given I am on Fanxchange
            Then  I should see "Tickets to any live event in one search"
		Then  I follow "NFL"
		Then  I follow "Arizona Cardinals"
		Then  I should see "Arizona Cardinals tickets"
            Then  I press "GET TICKETS" button with xpath "//*[@id='teamSchedule']/div[1]/div/div[1]/div[2]/div[2]/a"
            Then  I check if tickets are available for the current event
            Then  I should see an "MapContainer" element
        
        
        Scenario: Section Picker
            Given I am on Fanxchange
            Then  I press "NFL" button with xpath "//*[@id='closepls']/div[1]/div/div/div/ul/li[1]/a"
            Then  I press "Buffalo Bills" button with xpath "//*[@id='closepls']/div[1]/div/div/div/ul/li[1]/ul/li[10]/a"
            Then  I should be on "buffalo-bills-tickets"
            Then  I press "GET TICKETS" button with xpath "//*[@id='teamSchedule']/div[1]/div/div[2]/div[2]/div[2]/a"
            Then  I check if tickets are available for the current event
            Then  I should see an "#MapContainer" element
            Then  I press "Upper Level" button with xpath "//*[@id='GroupsContainer']/div[3]/div[2]/span[1]"  
            And   I should see available tickets with "Upper Level" value
            Then  I press "Upper Level" button with xpath "//*[@id='GroupsContainer']/div[3]/div[2]/span[1]"  
            Then  I press "Lower Level - Corner" button with xpath "//*[@id='GroupsContainer']/div[1]/div[2]/span[1]"
            And   I should see available tickets with "Lower Level - Corner" value
    
        
        Scenario: Filters
            Given I am on Fanxchange
            Then  I press "NFL" button with xpath "//*[@id='closepls']/div[1]/div/div/div/ul/li[1]/a"
            Then  I press "Arizona Cardinals" button with xpath "//*[@id='closepls']/div[1]/div/div/div/ul/li[1]/ul/li[1]/a"
            Then  I should be on "arizona-cardinals-tickets"
            Then  I press "GET TICKETS" button with xpath "//*[@id='teamSchedule']/div[1]/div/div[1]/div[2]/div[2]/a"
            Then  I check if tickets are available for the current event
            Then  I should see an "#eTicketFilter" element
            Then  I check "eTicketFilter"
            And   I should see available tickets with "E-ticket" value
            Then  I select "3+" from "TicketQuantity"
            And   I should see available tickets with "3" value
