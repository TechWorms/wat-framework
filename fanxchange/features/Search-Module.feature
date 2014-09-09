@suite @search
Feature: FANX-1.3
        
		Scenario: 1. Click inside the search box
			    2. Enter an artist or a sports team name
                      3. Click Go button
            Given I am testing Search Features on Fanxchange
            Then  I should see Tickets to any live event in one search
            Then  I should see the search bar
            And   I fill in search with Toronto
            And   I press GO!
            And   I should see We've got your tickets!
            And   I should see Results for Toronto
           
        Scenario: 1. Click inside the search box
   				  2. Enter a wrong search query
				  3. Click Go button
            Given I am testing Search Features on Fanxchange
            Then  I should see Tickets to any live event in one search
            Then  I should see the search bar
            And   I fill in search with dsdsdDd
            And   I press GO!
            And   I should see There could be a few reasons why nothing turned up in your search:
      
        Scenario: Search Query
            Given I am testing Search Features on Fanxchange
            Then  I should see Tickets to any live event in one search
            Then  I should see the search bar
            And   The search placeholder should contain Search by Team, Artist, Event, Date or Venue
            Then  I fill in search with Toronto
            Then  I wait for drop down search results
            Then  I should see drop down results for search query
            Then  I click the first event in the search query
            And   I should see Toronto FC tickets
        
        Scenario: Search Query in sub page
            Given I am testing Search Features on Fanxchange
            Then  I should see Tickets to any live event in one search
            And   I follow Concerts
            Then  I follow Beyonce
            Then  Once the page is loaded
            Then  I fill in search with Toronto
            Then  I wait for drop down search results
            Then  I should see drop down results for search query
            Then  I click the first event in the search query
            And   I should see Toronto FC tickets