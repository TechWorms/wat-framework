@fanx2.2 @order @all
Feature: Cupon Codes Discounts


			Scenario: Discount amount is bigger than the grand total
				Given I am logged in as "wattest3@gmail.com" with password "testme2012"
				And   I press "MLB" button with xpath "//header/div[1]/div/div/div/ul/li[2]/a"
				Then  I press "Boston Red Sox" button with xpath "//header/div[1]/div/div/div/ul/li[2]/ul/li[10]/a"
				Then  I should be on "boston-red-sox-tickets"
				Then  I press "GET TICKETS" button with xpath "//*[@id='teamSchedule']/div[1]/div/div[3]/div[2]/div[2]/a"
				Then  I press "Go" button with xpath "//*[@id='InventoryContainer']/div[2]/div/table/tbody/tr[1]/td[2]/div[2]/input"
				Then  I should see "Step 1 - Order Form"
				Then  I should see "Enter Member Pass Code"
				Then  I should see "Enter AIR MILES eVoucher"
				Then  I check my first order total
				Then  I press "Enter Member Pass Code" button with xpath "//*[@id='accordion2']/div[1]/a"
				Then  I fill in "member_pass" with "test70"
				Then  I fill in "cardnumber" with "4111111111111111"
				Then  I fill in "nameoncard" with "Remus Copil"
				Then  I select "11" from "exp_month"
				Then  I select "22" from "exp_year"
 				Then  I fill in "seccode" with "123"
				Then  I press "PROCEED TO CHECKOUT" button with xpath "//*[@id='submitCheckout']"
				And   I should be on "confirm_checkout_form"
				Then  I check my order total

			Scenario: percentage % (testing for 30%) 
				Given I am logged in as "wattest3@gmail.com" with password "testme2012"
				And   I press "MLB" button with xpath "//header/div[1]/div/div/div/ul/li[2]/a"
				Then  I press "Boston Red Sox" button with xpath "//header/div[1]/div/div/div/ul/li[2]/ul/li[10]/a"
				Then  I should be on "boston-red-sox-tickets"
				Then  I press "GET TICKETS" button with xpath "//*[@id='teamSchedule']/div[1]/div/div[3]/div[2]/div[2]/a"
				Then  I press "Go" button with xpath "//*[@id='InventoryContainer']/div[2]/div/table/tbody/tr[1]/td[2]/div[2]/input"
				Then  I should see "Step 1 - Order Form"
				Then  I should see "Enter Member Pass Code"
				Then  I should see "Enter AIR MILES eVoucher"
				Then  I check my first order total
				Then  I press "Enter Member Pass Code" button with xpath "//*[@id='accordion2']/div[1]/a"
				Then  I fill in "member_pass" with "perc30"
				Then  I fill in "cardnumber" with "4111111111111111"
				Then  I fill in "nameoncard" with "Remus Copil"
				Then  I select "11" from "exp_month"
				Then  I select "22" from "exp_year"
 				Then  I fill in "seccode" with "123"
				Then  I press "PROCEED TO CHECKOUT" button with xpath "//*[@id='submitCheckout']"
				And   I should be on "confirm_checkout_form"
				Then  I check my order total

			Scenario: Free shipping discount
				Given I am logged in as "wattest3@gmail.com" with password "testme2012"
				And   I press "MLB" button with xpath "//header/div[1]/div/div/div/ul/li[2]/a"
				Then  I press "Boston Red Sox" button with xpath "//header/div[1]/div/div/div/ul/li[2]/ul/li[10]/a"
				Then  I should be on "boston-red-sox-tickets"
				Then  I press "GET TICKETS" button with xpath "//*[@id='teamSchedule']/div[1]/div/div[3]/div[2]/div[2]/a"
				Then  I press "Go" button with xpath "//*[@id='InventoryContainer']/div[2]/div/table/tbody/tr[1]/td[2]/div[2]/input"
				Then  I should see "Step 1 - Order Form"
				Then  I should see "Enter Member Pass Code"
				Then  I should see "Enter AIR MILES eVoucher"
				Then  I check my first order total
				Then  I press "Enter Member Pass Code" button with xpath "//*[@id='accordion2']/div[1]/a"
				Then  I fill in "member_pass" with "freeshp"
				Then  I fill in "cardnumber" with "4111111111111111"
				Then  I fill in "nameoncard" with "Remus Copil"
				Then  I select "11" from "exp_month"
				Then  I select "22" from "exp_year"
 				Then  I fill in "seccode" with "123"
				Then  I press "PROCEED TO CHECKOUT" button with xpath "//*[@id='submitCheckout']"
				And   I should be on "confirm_checkout_form"
				Then  I check my order total