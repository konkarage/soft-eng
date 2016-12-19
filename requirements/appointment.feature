Feature: appointment
	Scenario: location of sample collection
		Given that I view a lab's profile
		When I book an appointment
    		Then I have the option to select the location of the sample collection
    		And I have the option to select the lab's place
    		And I have the option to select my own place
