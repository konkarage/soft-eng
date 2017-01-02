Feature: account
	The patients should be able to create accounts and modify their personal information.
	
	Scenario: successful account creation
		Given that I navigated the account creation page
		When I submit my username, password and personal information
		Then I should see my profile
		And I should have the option to modify my personal information
		
	Scenario: the password is too weak
		Given that I navigated the account creation page
		When I type a <weak password> that is not strong enough
			| 12345 | password |
		Then I should be prompted to choose a <strong password>
			| 4sa!fdf_F | A_veRy!strong1 |
			
	Scenario: username already exists
		Given that I navigated the account creation page
		When I type a username
		Then I should see the message "Username already exists"
			
	Scenario: modify personal information
		Given that I have logged into the system as a patient
		When I submit updated profile information
		Then I should see my profile
		
	
