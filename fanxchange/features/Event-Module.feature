@event @suite
Feature: Event Page

        
            Scenario: View From Seat
            Given I am on Fanxchange
            Then  Once the page is loaded
            Then  I should see "Tickets to any live event in one search"
            Then  I follow "NFL" 
            Then  I follow "Arizona Cardinals"
            Then  Once the page is loaded
            Then  I check if perfomer has events
            Then  I go to the 1 displayed event
            Then  I check if tickets are available for the current event
            Then  I should see an element with class "MapContainer"
            Then  I should see an element with id "GroupsContainer"
        
        Scenario: Section Picker
            Given I am on Fanxchange
            Then  Once the page is loaded
            Then  I should see "Tickets to any live event in one search"
            Then  I follow "NFL"
            Then  I follow "Buffalo Bills"
            Then  Once the page is loaded
            Then  I check if perfomer has events
            Then  I go to the 3 displayed event
            Then  I check if tickets are available for the current event
            Then  I should see an element with class "MapContainer"
            Then  I should see an element with id "GroupsContainer"
            Then  I filter tickets for "Lower Level - Sideline"
            And   I should see available tickets for "Lower Level - Sideline" 
            Then  I filter tickets for "Lower Level - Corner"
            And   I should see available tickets for "Lower Level - Corner"    
        
        Scenario: Filters
            Given I am on Fanxchange
            Then  Once the page is loaded
            Then  I should see "Tickets to any live event in one search"
            Then  I follow "NFL" 
            Then  I follow "Arizona Cardinals"
            Then  Once the page is loaded
            Then  I check if perfomer has events
            Then  I go to the 4 displayed event
            Then  I check if tickets are available for the current event
            Then  I should see an "eTicketFilter" input element
            Then  I check "eTicketFilter"
            Then  I should see "E-ticket"
            And   I should see available tickets with "E-ticket  " value
            Then  I select "3+" from "TicketQuantity"
            And   I should see available tickets with "3" or more quantity value
