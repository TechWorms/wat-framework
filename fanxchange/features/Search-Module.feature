@fanx1.5 @all @search
Feature: Given I am on the homepage , I enter search query and I press GO then I should see list of correctly results according to the user's query.

        
		Scenario: 1. Click inside the search box
				  2. Enter an artist or a sports team name
                  3. Click Go button
            Given I am on Fanxchange
            Then  I should see an "#search" element
            And   I fill in "search" with "Toronto"
            And   I press "GO" button with xpath "//*[@id='submit']"
            Then  I should be on "/searchresults"
            And   I should see "We've got your tickets!" 
            And   I should see "Results for 'Toronto'"
           
        Scenario: 1. Click inside the search box
   				  2. Enter a wrong search query
				  3. Click Go button
            Given I am on Fanxchange
            And   I fill in "search" with "dsdsdDd"
            And   I press "GO" button with xpath "//*[@id='submit']"
            Then  I should be on "/searcherror/dsdsdDd"
            And   I should see "it seems nothing turns up for that search query. Check your spelling or try another search."

        Scenario: Search Query
            Given I am on Fanxchange
            Then  I should see an "#searchbox" element
            Then  the "#searchbox" element should contain "Search by Team, Artist, Event, Date or Venue"
            Then  I fill in "search" with "toronto"
            Then  I fill in "search" with "toronto"
            And   I fill in "search" with "toronto"
            And   I should see "Performers"
            And   I should see an "//*[@id='ui-id-1']/div[2]/div[2]/li[1]" xpath element
            And   I should see an "//*[@id='ui-id-1']/div[2]/div[2]/li[2]" xpath element
            And   I should see an "//*[@id='ui-id-1']/div[2]/div[2]/li[3]" xpath element
            Then  I should see "Events"
            And   I should see an "//*[@id='ui-id-1']/div[3]/div[2]/li[1]" xpath element
            And   I should see an "//*[@id='ui-id-1']/div[3]/div[2]/li[2]" xpath element
            And   I should see an "//*[@id='ui-id-1']/div[3]/div[2]/li[3]" xpath element
            Then  I press "Event from list of Perfomers" button with xpath "//*[@id='ui-id-1']/div[3]/div[2]/li[1]/a"
            
        Scenario: Search Query in sub page
            Given I am on Fanxchange
            And   I press "Concerts" button with xpath "//*[@id='closepls']/div[1]/div/div/div/ul/li[5]/a"
            Then  I press "Beyonce" button with xpath "//*[@id='closepls']/div[1]/div/div/div/ul/li[5]/ul/li[4]/a"
            Then  I should see an "#search" element
            Then  I fill in "search" with "toronto"
            Then  I fill in "search" with "toronto"
            And   I should see "Performers"
            And   I should see an "//*[@id='ui-id-1']/div[2]/div[2]/li[1]" xpath element
            And   I should see an "//*[@id='ui-id-1']/div[2]/div[2]/li[2]" xpath element
            And   I should see an "//*[@id='ui-id-1']/div[2]/div[2]/li[3]" xpath element
            Then  I should see "Events"
            And   I should see an "//*[@id='ui-id-1']/div[3]/div[2]/li[1]" xpath element
            And   I should see an "//*[@id='ui-id-1']/div[3]/div[2]/li[2]" xpath element
            And   I should see an "//*[@id='ui-id-1']/div[3]/div[2]/li[3]" xpath element
            Then  I press "Event from list of Perfomers" button with xpath "//*[@id='ui-id-1']/div[2]/div[2]/li[1]/a"
            And   I should be on "toronto-fc-tickets"