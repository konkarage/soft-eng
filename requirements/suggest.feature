Feature: suggest

	Scenario: see lab tests
		Given that I have selected a lab
		When I select the option "See all available tests"
		Then I should see a list of <tests> with the following format
			     |name|price|
		And I have the option to view a test

	Scenario: see nearby labs
		Given that I have given permission to the system to use my location
		When I am logged in as patient
		Then I see a list with nearby <labs>

	Scenario: no nearby labs found
		Given that I have given permission to the system to use my location
		When I am logged in as patient
		Then I can see the message "There are no labs near you"

	Scenario: see tests alphabetically
		Given that I am logged in as patient
		When I select the option "Tests by Alphabet"
		And I select a letter 
		Then a list of <tests> having as first letter the selected one appears
		And I have the option to view a test's details
		And I have the option to see a list of <labs> that offer this test

	Scenario: see tests by department 
		Given that I am logged in as patient
		When I select the option "Tests by Department"
		And I select a department
		Then a list of <tests> corresponding to the selected department appears
		And I have the option to view a test's details
		And I have the option to see a list of <labs> that offer this test 	
