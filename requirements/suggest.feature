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

