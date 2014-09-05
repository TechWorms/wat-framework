@homepage @suite
Feature: FANX-1.0 / FANX-1.1 / FANX-1.2 / FANX-1.4 / FANX-2.6


          Scenario: Homepage
                 Given I am on Fanxchange
                 Then Once the page is loaded
                 Then The title should be FanXchange
          
          Scenario: Homepage Header and FanXchange Logo
                 Given I am on Fanxchange
                 Then  I should see "Tickets to any live event in one search"
                 And   I should see an element with class "navbar" 
                 And   I should see an element with class "logo-fanx"
          
          Scenario: Home Page Drop Down Categories
                 Given I am on Fanxchange
                 Then  I should see "NFL"
                 Then  I should see "MLB"
                 Then  I should see "NBA"
                 Then  I should see "NHL"
                 Then  I should see "Concerts"
                 Then  I should see "Theatre"
          
          Scenario: Home Page Buttons
                 Given I am on Fanxchange
                 Then  I should see "SIGN IN"
                 Then  I should see "SIGN UP"
                 Then  I should see "SELL TICKETS"
                 Then  I should see "HELP"
         
          Scenario: Home Page Search Bar
                 Given I am on Fanxchange
                 Then  I should see an element with class "input-append"
                 And   The search placeholder should contain Search by Team, Artist, Event, Date or Venue
          
          Scenario: Upcoming events should be displayed based on my location , I should see a number of 5 Upcoming Events 
                 Given I am on Fanxchange
                 Then  I should see "Upcoming Events"
                 Then  I should see 5 events displayed 
                 Then  I should see "New York"
                 And   The events displayed should match the location for upcoming events
                 And   I check that the tickets displayed do not have past dates
          @ter
          Scenario: No upcoming events without tickets available.
                 Given I am on Fanxchange
                 Then  I should see "Upcoming Events"
                 Then  I should see 5 events displayed
                 Then  I go to the 0 displayed event
                 Then  I should see event details
                 Then  I check if tickets are available for the current event
                 Then  I go back
                 Then  I go to the 1 displayed event
                 Then  I should see event details
                 Then  I check if tickets are available for the current event
                 Then  I go back
                 Then  I go to the 2 displayed event
                 Then  I should see event details
                 Then  I check if tickets are available for the current event
                 Then  I go back
                 Then  I go to the 3 displayed event
                 Then  I should see event details
                 Then  I check if tickets are available for the current event
                 Then  I go back
                 Then  I go to the 4 displayed event
                 Then  I should see event details
                 Then  I check if tickets are available for the current event
                 
          Scenario: There should be at least 3 popular events displayed at all time. Popular events should not contain events from past dates.
                 Given I am on Fanxchange
                 Then  I should see "Popular Events"
                 Then  I should see an element with class "upcomming-events-section"
                 Then  I check if displayed popular events are shown for future events

          Scenario: Footer Copy Text should contain: Buy Tickets with Confidence , 100% FanXchange Guarantee , Sell Tickets with Ease
                 Given I am on Fanxchange
                 Then  I should see "Buy Tickets With Confidence"
                 And   I should see "Choose from over 6 million tickets for sports, concerts, and theater events, all listed by FanXchange-verified sellers, and buy them securely online in minutes."
                 Then  I should see "Sell Tickets With Ease"
                 And   I should see "Sell your sports, concert, and theater tickets securely and instantly to fans around the world: just list your tickets and FanXchange handles the rest, all with the lowest fees around."
                 Then  I should see "100% FanXchange"
                 And   I should see "The FanXchange Guarantee is our commitment to our valued clientele that they will be 100% protected against fraud and your tickets will always arrive on time for the event. Whether you are buying or selling tickets in our marketplace FanX Guarantee assures that every transaction will be completed in a safe and secure environment."
                 Then  I should see "Read More"
        
         Scenario: Footer Links should contain: Quick Links for categories of events / FanXchange footer links
                Given I am on Fanxchange
                
                Then I should see "NFL TICKETS"

                Then I should see "Baltimore Ravens"
                Then I should see "San Fransisco 49ers"
                Then I should see "New England Patriots"
                Then I should see "Dallas Cowboys"
                Then I should see "Washington Redskins"
                Then I should see "Green Bay Packers"

                Then I should see "NBA TICKETS"

                Then I should see "Toronto Raptors"
                Then I should see "New York Knicks"
                Then I should see "Miami Heat"
                Then I should see "Boston Celtics"
                Then I should see "Los Angeles Lakers"
                Then I should see "Oklahoma City Thunder"

                Then I should see "NHL TICKETS"
                
                Then I should see "Toronto Maple Leafs"
                Then I should see "Chicago Blackhawks"
                Then I should see "New York Rangers"
                Then I should see "Boston Bruins"
                Then I should see "Detroit Red Wings"
                Then I should see "Montreal Canadiens"

                Then I should see "MLB TICKETS"
                
                Then I should see "Toronto Blue Jays"
                Then I should see "San Francisco Giants"
                Then I should see "New York Yankees"
                Then I should see "Boston Red Sox"
                Then I should see "Philadelphia Phillies"

                Then I should see "CONCERT TICKETS"

                Then I should see "Jonas Brothers"
                Then I should see "Justin Bieber"
                Then I should see "Lady Gaga"
                Then I should see "Roger Waters"
                Then I should see "Carrie Underwood"
                Then I should see "Kiss"
                Then I should see "Black Eyed Peas"
                
                Then I should see "THEATRE TICKETS"

                Then I should see "The Book of Mormon"
                Then I should see "Lion King"
                Then I should see "Wicked"
                Then I should see "Jersey Boys"

          Scenario: Scroll down to the Footer and check if items are displayed
               FanXchange: 1. Our Team , 2. About Us , 3. Jobs , 4. Press , 5. Legal
                Given I am on Fanxchange
                Then  I should see "FanXchange"
                And   I should see "Our Team"
                And   I should see "About Us"
                And   I should see "Jobs"
                And   I should see "Press"
                And   I should see "Legal"
        
          Scenario: Scroll down to the Footer and check if items are displayed
                More Info: 1. Help , 2. Contact Us  , 3. Photo Credits , 4. Site Map
                Given I am on Fanxchange
                Then  I should see "More Info"
                And   I should see "Help"
                And   I should see "Contact Us"
                And   I should see "Photo Credits"
                And   I should see "Site Map"
        
        Scenario: Scroll down to the Footer and check if items are displayed
              Show Us Some Love: 1. Facebook , 2. Twitter , 3. Instagram
          Given I am on Fanxchange
          Then  I should see "Show Us Some Love"
          And   I should see "Facebook"
          And   I should see "Twitter"
          And   I should see "Instagram"
          
          Scenario: Scroll down to the Footer and check if items are displayed
                1. Trust symbols and methods of payment accepted
                2. Copyright
            Given I am on Fanxchange
            Then  I should see an element with class "badges"
            And   I should see "Jobs"
            And   I should see "Press"
            And   I should see "Legal"
            And   I should see "Contact Us"
            And   I should see "©2014 FanXchange. All Rights Reserved."
    
    Scenario: Change location by postal code
      Given I am on Fanxchange
      Then  I should see "Upcoming Events"
      Then  I follow "Change Location"
      Then  I fill in "zip" with "M4C1S2"
      Then  I press "Change Location"
      And   I should see "Toronto, Ontario"
    
    Scenario: Change location by city
      Given I am on Fanxchange
      Then  I should see "Upcoming Events"
      Then  I follow "Change Location"
      Then  I fill in "city" with "New York"
      Then  I press "Change Location"
      And   I should see "State/Province field is required!"

    Scenario: Change location by city with no events
      Given I am on Fanxchange
      Then  I should see "Upcoming Events"
      Then  I follow "Change Location"
      Then  I fill in "city" with "Prac"
      Then  I fill in "state" with "Pirac"
      Then  I press "Change Location"
      And   I should see "New York, New York"
    
    Scenario: Change location by city and province
      Given I am on Fanxchange
      Then  I should see "Upcoming Events"
      Then  I follow "Change Location"
      Then  I fill in "city" with "New York"
      Then  I fill in "state" with "New York"
      Then  I press "Change Location"
      And   I should see "New York, New York"
    
    Scenario: Geo Location
      Given I navigate to "https://proxylistpro.com/#proxy"
      Then  I fill in "address" with "http://www.fanxchange.com"
      And   I select "dallas.proxylistpro.com" from "select-location"
      Then  I open the connection
      Then  I should see "Upcoming Events"
      And   The events displayed should match the location for upcoming events