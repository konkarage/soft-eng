Feature: lab
	Lab users should be able to set and modify key operational information.
	
	Background:
		Given that I am logged in as a lab user

	Scenario: Retrieve test
		Given that a test exists
		When I retrieve a test by it's name
		Then I should see it's description

	Scenario: Retrieve test list
		When I retrieve all the tests
		Then I should see a list of the available tests
	
	Scenario: Submit operation timetable
		When I submit an operation timetable
		Then I should see a message telling  me "Operation timetable submitted"
		
	Scenario: Submit collection timetable
		When I submit a collection timetable
		Then I should see a message telling  me "Collection timetable submitted"

	Scenario: Insert new test
		When I insert a new test at the list of available ones
		Then I should see the new test
		And be prompted to enter its price
		
	Scenario: Update existing test
		When I update the description of a test
		Then I should see the test
		
	Scenario: Delete test
		When I delete a test by it's name
		Then I should see the updated list of existing tests
		
	Scenario: Test doesn't exist
		Given that a test doesn't exist
		When I try to delete, retrieve or edit it

	Scenario: Set test price
		Given that I have inserted a new test
		When I set its price
		Then I should see the newly created test
		
	Scenario: Update test price
		Given that a test exists
		When I try to update its price
		Then I should see the test
		
	Scenario: Wrong price
		Given that a test exists
		When I submit a price that is less than zero
		Then I should see a message telling me "Invalid price"
		And be prompted to try again
		
	Scenario: Payment policy
		Given that a test exists
		When I define a <payment policy> for it
			| cash | credit card | both |
		Then I should see the test
		
	Scenario: send results message
		When I upload the test results to the patient's profile
		Then I have the option to send a message to the patient to inform him that he can retrieve the results


