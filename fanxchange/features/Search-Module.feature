@fanx1.5 @all @search
Feature: Given I am on the homepage , I enter search query and I press GO then I should see list of correctly results according to the user's query.

        
		Scenario: 1. Click inside the search box
				  2. Enter an artist or a sports team name
                  3. Click Go button
            Given I am on Fanxchange
            Then  I should see an "search" input element
            And   I fill in "search" with "Toronto"
            And   I follow "GO!"
            And   I should see "We've got your tickets!" 
            And   I should see "Results for 'Toronto'"
           
        Scenario: 1. Click inside the search box
   				  2. Enter a wrong search query
				  3. Click Go button
            Given I am on Fanxchange
            Then  I should see an "search" input element
            And   I fill in "search" with "dsdsdDd"
            And   I follow "GO!"
            And   I should see "There could be a few reasons why nothing turned up in your search:"

        Scenario: Search Query
            Given I am on Fanxchange
            Then  I should see an "search" input element
            And   The search placeholder should contain Search by Team, Artist, Event, Date or Venue
            Then  I fill in "search" with "toronto"
            And   I should see "Performers"
            Then  I should see "Toronto FC"
            Then  I should see "Toronto Raptors"
            Then  I should see "Toronto Maple Leafs"
            And   I should see "Events"
            Then  I should see "Retro Futura Tour"
            Then  I should see "Toronto Blue Jays"
            Then  I should see "Tom Petty and The Heartbreakers"
            Then  I follow "Toronto FC"
            And   I should see "Toronto FC tickets"
            
        Scenario: Search Query in sub page
            Given I am on Fanxchange
            And   I follow "Concerts"
            Then  I follow "Beyonce" 
            Then  I fill in "search" with "toronto"
            And   I should see "Performers"
            Then  I should see "Toronto FC"
            Then  I should see "Toronto Raptors"
            Then  I should see "Toronto Maple Leafs"
            And   I should see "Events"
            Then  I should see "Retro Futura Tour"
            Then  I should see "Toronto Blue Jays"
            Then  I should see "Tom Petty and The Heartbreakers"
            Then  I follow "Toronto FC"
            And   I should see "Toronto FC tickets"