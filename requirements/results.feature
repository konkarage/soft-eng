Feature: test results

	Scenario: download results
		Given that I have received the message that the test results are ready
		When I select the option "My Health Records"
		And I select the appointment 
		Then I can see the test results
		And I have the option to download them
		And I have the option to print them
		And I have the option to review them

	Scenario: cannot see results
		Given that I have not received the message that the test results are ready
		When I select the option "My Records"
		And I select the appointment 
		Then I should see the message "Test results are not ready yet"

	Scenario: upload results
		Given that I am logged in as lab
		And I have searched for a patient
		When I view the patient's profile
		Then I should have the option to upload his test results

	Scenario: unable to upload results
		Given that I am logged in as lab
		And I am in a patient's profile
		When I upload the test results
		Then I see a message "Not supported file format. Please upload a .pdf file"
		
	
