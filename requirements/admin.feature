Feature: admin
	The administrator should have full freedom on creating, modifying and deleting user accounts. Additionaly, the administrator is responsible for receiving messages from lab representatives about the creation of new lab accounts.
	
	Background:
		Given that I have logged in as an administrator 
	
	Scenario: create user account
		Given that a user doesn't exist
		When I create a new user account by name
		Then I should see the new user
		
	Scenario: unsuccesfuly create user account
		Given that a user exists
		When I try to create a new user account with the same name
		Then I should see a message telling me "User already exists"
		
	Scenario: modify user account
		Given that a user exists
		When I submit updated personal information
		Then I should see the user
		
	Scenario: delete user account
		Given that a user exists
		When I delete a user by name
		Then I should see a message telling me "Successfully deleted"
		
	Scenario: unsuccessfully delete user account
		Given that the user account does not exist
		When I try to delete a user by name
		Then I should see a message telling me "There is no such user"
		
	Scenario: receive lab message
		Given that a lab representative has sent a message from the corresponding form
		When I navigate the screen with my messages
		Then I should see the message
