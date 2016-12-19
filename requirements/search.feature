Feature: search

	Scenario: search for a lab
		Given that I am logged in as patient
		When I search for a lab by name
		Then the relevant lab appears
		And I have the option to see the lab's profile
		And I have the option to see a list with the lab's tests

	Scenario: lab does not exist
		Given that a lab does not exist
		When I search for it by name
		Then I should see a message "The lab does not exist"

	Scenario: unauthorized to search for a lab
		Given that I am not logged in
		When I search for a lab 
		Then I should receive a message "You must login first" 

	Scenario: search for a test
		Given that I have selected a lab 
		When I search for a test by name or id
		Then a list of <tests> appears with the following format 
			      |name|price|
		And I have the option to view a test

	Scenario: test does not exist
		Given that a test does not exist 
		When I search for it by name or id
		Then I should see a message "The test does not exist"
