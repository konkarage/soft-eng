Feature: payment
	The users shall be able to pay for the tests that they booked.
	
	Background:
		Given that I am logged in as a user
		And I have added tests to my basket
	
	Scenario: confirm transaction
		When I press the payment button
		Then I should be prompted to confirm the details of the transaction
	
	Scenario: make payment
		Given that I have confirmed the details of the transaction
		And I have filled the payment details
		When I press the pay button
		Then I should see a message telling me "booking confirmed"
