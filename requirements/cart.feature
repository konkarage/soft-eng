Feature: cart
	Patients have the option to add tests to cart or remove them from it.

	Scenario: add test to cart
		Given that I have searched for a test
		And I have selected it 
		When I add it to the cart
		Then I should have the option to view it in the cart 
		And I should have the option to remove it from cart
		And I should be prompted to make an appointment

	Scenario: remove test from cart
		Given that I have a cart with tests
		And I view the cart
		When I select a test
		Then I should have the option to remove it from cart
