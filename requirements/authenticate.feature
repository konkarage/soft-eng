Feature: authentication
	The system is intended to be used only from authenticated users. Therefore, there must be a login step.
	
	Scenario: successful sign in
		Given that I am not logged in
		When I submit <username> and <password> at the login screen
			| user | password |
		Then I should be presented with a personalized welcome screen
		
	Scenario: unsuccesful sign in
		Given that I am not logged in
		When I submit wrong <username> or <password> at the login screen
			| user | password |
		Then I should see a message telling me "Wrong username or password"
	
