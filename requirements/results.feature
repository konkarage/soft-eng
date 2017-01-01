Feature: test results
	The patients shall be able to retrieve test results, after being informed about their availability.

Scenario: send results message
 		Given that I am logged in as lab
 		When I upload the test results to the patient's profile
 		Then I have the option to send a message to the patient to inform him that he can retrieve the results

	Scenario: download results
		Given that I have received the message that the test results are ready
		When I select the option "My Health Records"
		And I select the appointment 
		Then I can view the test results
		And I have the option to download them
		And I have the option to print them

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
		
	
		
	
