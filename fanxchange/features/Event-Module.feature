@event @suite
Feature: Event Page

        
        Scenario: View From Seat
            Given I am testing Event Features on Fanxchange
            Then  Once the page is loaded
            Then  I should see Tickets to any live event in one search
            Then  I follow NFL 
            Then  I follow Arizona Cardinals
            Then  I check if perfomer Arizona Cardinals has events
            Then  I go to the first displayed event for Arizona Cardinals
            Then  I check if tickets are available for the current event
            Then  I should see the Map Container element
        
        Scenario: Section Picker
            Given I am testing Event Features on Fanxchange
            Then  Once the page is loaded
            Then  I should see Tickets to any live event in one search
            Then  I follow NFL
            Then  I follow Buffalo Bills
            Then  Once the page is loaded
            Then  I check if perfomer Buffalo Bills has events
            Then  I go to the first displayed event for Buffalo Bills
            Then  Once the page is loaded
            Then  I check if tickets are available for the current event
            Then  I filter tickets on the map container section filter for Lower Level - Sideline
            And   I should see available tickets for Lower Level - Sideline
   
        Scenario: Filters
            Given I am testing Event Features on Fanxchange
            Then  Once the page is loaded
            Then  I should see Tickets to any live event in one search
            Then  I follow NFL
            Then  I follow Arizona Cardinals
            Then  Once the page is loaded
            Then  I check if perfomer Arizona Cardinals has events
            Then  I go to the fourth displayed event for Arizona Cardinals
            Then  Once the page is loaded
            Then  I check if tickets are available for the current event
            Then  I should see the E-Ticket filter
            And   I check the E-Ticket filter
            Then  I should see only E-Tickets in the ticket list
            Then  I select more than 3 from the quantity option
            And   I should see only tickets that have more than 3+ available tickets for current event
