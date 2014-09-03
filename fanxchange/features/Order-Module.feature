@order @suite
Feature: Cupon Codes Discounts

			
			Scenario: Discount amount is bigger than the grand total
				Given I am on Fanxchange
				Then  I should see "Tickets to any live event in one search"
			    And   I login as seller
			    Then  I should see "Hi Seller"
				And   I follow "MLB"
				Then  I follow "Boston Red Sox"
				Then  I should see "Boston Red Sox tickets"
				Then  I check if perfomer has events
				Then  I go to the 0 displayed event
				Then  I check if tickets are available for the current event
				Then  I press "Go"
				Then  I should see "Step 1 - Order Form"
				Then  I should see "Enter Member Pass Code"
				Then  I should see "Enter AIR MILES eVoucher"
				Then  I check my order total
				Then  I click Enter Member Pass Code
				Then  I fill in "member_pass" with "test70"
				Then  I fill in "cardnumber" with "4111111111111111"
				Then  I fill in "nameoncard" with "Remus Copil"
				Then  I select "11" from "exp_month"
				Then  I select "22" from "exp_year"
 				Then  I fill in "seccode" with "123"
				Then  I click "proceed to checkout"
				And   I should see "Step 2 - Order Confirmation"
				Then  I check my order total

			Scenario: percentage 30%  
				Given I am on Fanxchange
				Then  I should see "Tickets to any live event in one search"
			    And   I login as seller
			    Then  I should see "Hi Seller"
				And   I follow "MLB"
				Then  I follow "Boston Red Sox"
				Then  I should see "Boston Red Sox tickets"
				Then  I check if perfomer has events
				Then  I go to the 0 displayed event
				Then  I check if tickets are available for the current event
				Then  I press "Go"
				Then  I should see "Step 1 - Order Form"
				Then  I should see "Enter Member Pass Code"
				Then  I should see "Enter AIR MILES eVoucher"
				Then  I check my order total
				Then  I click Enter Member Pass Code
				Then  I fill in "member_pass" with "perc30"
				Then  I fill in "cardnumber" with "4111111111111111"
				Then  I fill in "nameoncard" with "Remus Copil"
				Then  I select "11" from "exp_month"
				Then  I select "22" from "exp_year"
 				Then  I fill in "seccode" with "123"
				Then  I click "proceed to checkout"
				And   I should see "Step 2 - Order Confirmation"
				Then  I check my order total

			Scenario: Free shipping discount
				Given I am on Fanxchange
				Then  I should see "Tickets to any live event in one search"
			    And   I login as seller
			    Then  I should see "Hi Seller"
				And   I follow "MLB"
				Then  I follow "Boston Red Sox"
				Then  I should see "Boston Red Sox tickets"
				Then  I check if perfomer has events
				Then  I go to the 0 displayed event
				Then  I check if tickets are available for the current event
				Then  I press "Go"
				Then  I should see "Step 1 - Order Form"
				Then  I should see "Enter Member Pass Code"
				Then  I should see "Enter AIR MILES eVoucher"
				Then  I check my order total
				Then  I click Enter Member Pass Code
				Then  I fill in "member_pass" with "freeshp"
				Then  I fill in "cardnumber" with "4111111111111111"
				Then  I fill in "nameoncard" with "Remus Copil"
				Then  I select "11" from "exp_month"
				Then  I select "22" from "exp_year"
 				Then  I fill in "seccode" with "123"
				Then  I click "proceed to checkout"
				And   I should see "Step 2 - Order Confirmation"
				Then  I check my order total