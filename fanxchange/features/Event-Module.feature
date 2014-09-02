@event @suite
Feature: Event Page

        
            Scenario: View From Seat
            Given I am on Fanxchange
            Then  I should see "Tickets to any live event in one search"
            Then  I follow "NFL" 
            Then  I follow "Arizona Cardinals"
            Then  I check if perfomer has events
            Then  I go to the 1 displayed event
            Then  I check if tickets are available for the current event
            Then  I should see an element with class "MapContainer"
            Then  I should see an element with id "GroupsContainer"
        
        Scenario: Section Picker
            Given I am on Fanxchange
            Then  I should see "Tickets to any live event in one search"
            Then  I follow "NFL"
            Then  I follow "Buffalo Bills"
            Then  I check if perfomer has events
            Then  I go to the 1 displayed event
            Then  I check if tickets are available for the current event
            Then  I should see an element with class "MapContainer"
            Then  I should see an element with id "GroupsContainer"
            Then  I filter tickets for "Lower Level - Sideline"
            And   I should see available tickets for "Lower Level - Sideline" 
            Then  I filter tickets for "Lower Level - Corner"
            And   I should see available tickets for "Lower Level - Corner"    
        @filters
        Scenario: Filters
            Given I am on Fanxchange
            Then  I should see "Tickets to any live event in one search"
            Then  I follow "NFL" 
            Then  I follow "Arizona Cardinals" 
            Then  I check if perfomer has events
            Then  I go to the 1 displayed event
            Then  I check if tickets are available for the current event
            Then  I should see an "eTicketFilter" input element
            Then  I check "eTicketFilter"
            Then  I should see "E-ticket&nbsp;&nbsp;"
            And   I should see available tickets with "E-ticket  " value
            Then  I select "3+" from "TicketQuantity"
            And   I should see available tickets with "3" quantity value
