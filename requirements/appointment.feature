Feature: appointment
	The patient proceeds with an appointment booking.
	
	Scenario: select location of sample collection
		Given that I view a lab's profile
		When I book an appointment
    		Then I have the option to select the location of the sample collection
    		And I have the option to select the lab's place
    		And I have the option to select my own place

	Scenario: select datetime of sample collection
		Given that I make an appointment booking
		When I select the location of the sample collection
		Then I have the option to select the datetime of the sample collection

	Scenario: confirm appointment details
		Given that I have a cart with tests
		And I have entered the payment details
		When I select the "Confirm" option
		Then the confirmation window with the appointment's details appears
		And I have the option to select "Next"
		And I have the option to select "Cancel"

	Scenario: modify appointment details
		Given that I have selected "Cancel" in the confirmation window
		When I modify the appointment's details
		And I select the "Confirm" option
		Then the confirmation window appears
		And I have the option to select "Next"
		And I have the option to select "Cancel"

	Scenario: book new appointment
		Given that I have a cart with tests
		And I have entered the payment details
		And I have confirmed the appointment's details
		When I submit an appointment
		Then a new appointment is created
		And I receive a confirmation message with the appointment's details
		And I have the option to view the appointment
		And I have the option to cancel the appointment
		
	Scenario: cannot book appointment
		Given that I have an empty cart
		When I book an appointment
		Then I should see a message saying "Cannot book an appointment. You must select at least one test."

	Scenario: cancel appointment
		Given that I have submitted an appointment 
		And the time until the test execution is more than 2 hours
		When I cancel the appointment
		Then I should see a success message saying "Appointment canceled"

	Scenario: unable to cancel appointment
		Given that I have submitted an appointment
		And the time until the test execution is less than 2 hours
		When I cancel the appointment
		Then I should see a message saying "Appointment cannot be canceled. Please contact the lab."

	Scenario: view appointment
		Given that I have submitted an appointment
		When I select the option "My Appointments"
		And I select a certain appointment
		Then I can see the appointment's details
		And I have the option to review the appointment
		

