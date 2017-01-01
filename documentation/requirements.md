# User Requirements Document

## Functional Requirements and User Stories

### FR-1
The user shall be able to login and logout of the system. 
#### Description
Each user must enter the system by typing his own username and password, which are created during the sign up process. Moreover, the system must provide him with a logout option. When a user enters the system, he is directed into the corresponding home page, according to the granted permissions. 
#### User priority
(5/5) Every user must be recognized by the system through a unique username and password. Authentication enables users to have access to all the services and use them in a safe manner.
#### Technical priority
(4/5) The full functionality of the system is provided only to authenticated users.
#### User story
https://github.com/konkarage/soft-eng/blob/master/requirements/authenticate.feature

### FR-2 
The user shall be able to create a personal account.
#### Description
Each user should create a profile with his personal information, i.e. name, address, contact information, insurance details. During this process the username and password for the login procedure are being set.
#### User priority
(5/5) Each user needs his personal information in order to book an appointment, which is the main service the system offers.
#### Technical priority
(5/5) During this process the credentials for the login procedure are being created and, thus, it is essential for the system's functionality.    
#### User story
https://github.com/konkarage/soft-eng/blob/master/requirements/account.feature

### FR-3
The user shall be able to modify his personal information.
#### Description
It is important that each user can view his profile and make changes to information that is no longer valid. 
#### User priority
(4/5) It is important for the user to be able to update invalid personal details in order not to face difficulties when he tries to use the system.
#### Technical priority
(2/5) The system is fully functional even if we omit FR-3.
#### User story
https://github.com/konkarage/soft-eng/blob/master/requirements/account.feature

### FR-4
The patient shall be able to search for available diagnostic labs.
#### Description
The system should enable patients to search for diagnostic laboratories according to certain criteria, i.e. region, postcode.
#### User priority
(5/5) Without the search option, the user cannot view a lab's profile and proceed with the appointment's booking.
#### Technical priority
(4/5) The main functionality of the system, i.e. the appointment's booking, is disabled without the search option.
#### User story
https://github.com/konkarage/soft-eng/blob/master/requirements/search.feature

### FR-5
The patient and lab shall be able to search for tests.
#### Description
The system should enable patients and labs, as well, to search for the tests provided by the corresponding lab. Patients search for tests in order to place them in cart and proceed with the appointment booking. Each lab must be able to search for its tests in order to view, update or delete them. 
#### User priority
(5/5) In order to book an appointment, the patient must search for tests and place them in cart. Without the search option, the user cannot view lab's tests and proceed with the appointment's booking. Moreover, the lab's reliability is achieved when it keeps its profile updated.
#### Technical priority
(4/5) The main functionality of the system, i.e. the appointment's booking, is disabled without the search option. 
#### User story
https://github.com/konkarage/soft-eng/blob/master/requirements/search.feature

### FR-6
The patient shall be able to see the available tests provided by each lab.
#### Description
When a patient chooses a specific lab, the system should display a list with all the tests provided. These may refer to complete blood count, cholesterol and glucose analyses, urinalysis, etc. 
#### User priority
(4/5) In order to book an appointment, the patient must search for tests and place them in cart. If he does not know the name or id of a test, this option enables him to view all tests and select the ones of his preference.
#### Technical priority
(3/5) The system is functional even when this requirement is not included, since patients have also the option to search for a specific test by name or id.
#### User story
https://github.com/konkarage/soft-eng/blob/master/requirements/suggest.feature

### FR-7
The patient shall be able to place, view or cancel a test booking.
#### Description
Each patient must be able to make an appointment, view it whenever he wants and cancel it, as long as the time until the test execution is more than two hours.
#### User priority
(5/5) It is necessary that the system allows the patients to book appointments and handle them.
#### Technical priority 
(4/5) The system achieves its full functionality only when the booking service is provided.
#### User story
https://github.com/konkarage/soft-eng/blob/master/requirements/appointment.feature

### FR-8
The patient shall be able to add payment details.
#### Description
Each patient must have the option to fill the payment details in order to confirm the booking.
#### User priority
(5/5) The appointment cannot be booked if payment details are not provided.
#### Technical priority
(4/5) The main service of the system, i.e. the appointment booking, cannot be provided if this requirement is not included.
#### User story
https://github.com/konkarage/soft-eng/blob/master/requirements/payment.feature

### FR-9
The patient shall be able to confirm the booking's details.
#### Description
The patient must have the option to review and confirm the appointment's details before submitting the order.
#### User priority
(5/5) The appointment cannot be submitted without the confirmation step.
#### Technical priority
(4/5) The main service of the system, i.e. the appointment booking, cannot be provided without the confirmation step.
#### User story
https://github.com/konkarage/soft-eng/blob/master/requirements/appointment.feature

### FR-10
The patient shall be able to select the datetime and location of the sample's collection.
#### Description
During the booking procedure, the patient must be able to choose when and where he wants the test to be executed. The options of the location are either the laboratory or his own place, where, in the case of the latter, the sample is collected by a collection agent.
#### User priority
(5/5) In order to proceed with the appointment booking, it is essential that the patient selects the datetime and location of the test execution.
#### Technical priority
(4/5) The main service of the system, i.e. the appointment booking, cannot be provided without choosing the location and datetime of the test execution.
#### User story
https://github.com/konkarage/soft-eng/blob/master/requirements/appointment.feature

### FR-11
The patient should receive a confirmation message with the booking's details.
#### Description
When the booking is submitted, it is suggested that the system will send to the patient a sms and/or email with the appointment's details. 
#### User priority
(4/5) It is important that the patient receives a message with all the appointment's information, since there is no need to enter the system every time he wants to view the appointment's details.
#### Technical priority
(1/5) The system is fully functional without FR-11.
#### User story
https://github.com/konkarage/soft-eng/blob/master/requirements/appointment.feature

### FR-12 
The patient shall receive a message when the test results are ready.
#### Description
When the test results have been prepared from the lab, a message informing the patient should be sent.
#### User priority
(5/5) It is of high importance that the patient is informed when the results are ready, so as to know when to acquire them.
#### Technical priority
(1/5) The system is fully functional without FR-12.
#### User story
https://github.com/konkarage/soft-eng/blob/master/requirements/results.feature

### FR-13
The patient shall be able to acquire test results.
#### Description
The patient must have the option to view each appointment's results and download or print them.
#### User priority
(5/5) It is essential for the patient to be able to acquire test results .
#### Technical priority
(2/5) The system does not lose its full functionality when this requirement is omitted.
#### User story
https://github.com/konkarage/soft-eng/blob/master/requirements/results.feature

### FR-14
The patient should be able to see the nearest to him laboratories.
#### Description
The system could use the user's location services (if enabled) and show automatically the nearby laboratories.
#### User priority
(3/5) It would be interesting to add a feature that will enable patients to view a list with the nearby labs.
#### Technical priority
(1/5) The system will remain fully functional without considering this requirement.
#### User story
https://github.com/konkarage/soft-eng/blob/master/requirements/suggest.feature

### FR-15
The lab shall be able to ulpoad test results to the system.
#### Description
The lab must have the option to upload test results to a patient's profile.
#### User priority
(5/5) If results are not uploaded, patients cannot retrieve them.
#### Technical priority
(2/5) The system remains fully functional.
#### User story
https://github.com/konkarage/soft-eng/blob/master/requirements/results.feature

### FR-16
The lab shall be able to define the payment policy.
#### Description
Each lab must define the ways patients can pay for test bookings. 
#### User priority
(4/5) The patient will not be able to proceed with the appointment booking, if he tries to pay using ways that are not supported by the system.
#### Technical priority
(4/5) The booking procedure cannot be completed.
#### User story
https://github.com/konkarage/soft-eng/blob/master/requirements/payment.feature

### FR-17
The lab shall be able to send a results message to a patient.
#### Description
Each lab must have the option to communicate with its patients in order to inform them that test results are ready.
#### User priority
(4/5) If the communication between the lab and its patients fails, then the latter may take actions with no results, i.e. enter the system in order to download results without knowing if they are available.
#### Technical priority
(1/5) The system remains totally functional.
#### User story
https://github.com/konkarage/soft-eng/blob/master/requirements/lab.feature

### FR-18
The lab shall be able to insert, update or delete a test from the list of the available tests.
#### Description
The lab has the option to manage the tests it provides.
#### User priority
(5/5) The lab's role would be useless, if it were not able to handle its own tests.
#### Technical priority
(4/5) Some main procedures would be disabled, i.e. the appointment booking.
#### User story
https://github.com/konkarage/soft-eng/blob/master/requirements/lab.feature

### FR-19
The admin shall be able to create, modify or delete a user's account.
#### Description
The administrator should have full freedom on creating, modifying and deleting users' accounts.
#### User priority
(5/5) The administrator's role is very important, since he determines if a lab fulfills the criteria in order to be added to the system.
#### Technical priority
(3/5) There will be malfunctions in the system, since uncertified labs may create accounts. 
#### User story
https://github.com/konkarage/soft-eng/blob/master/requirements/admin.feature

### FR-20
The admin shall be able to receive a message from a lab representative.
#### Description
A lab representative, regarded as a guest that interacts with the system, must have the option to send a message to the administrator in order to ask for an account creation.
#### User priority
(5/5) There is no other way for the administrator to communicate with a new lab that wants to enter the system.
#### Technical priority
(3/5) In order to achieve reliability, uncertified labs should not be able to create accounts.
#### User story
https://github.com/konkarage/soft-eng/blob/master/requirements/admin.feature

### FR-21
The lab shall be able to set and update the test's price.
#### Description
Each lab must define the price of the tests it provides.
#### User priority
(5/5) The lab should necessarily define and modify the price of the tests.
#### Technical priority
(4/5) Some main procedures would be disabled, i.e. the appointment booking.
#### User story
https://github.com/konkarage/soft-eng/blob/master/requirements/lab.feature

### FR-22
The lab shall be able to submit the operation and collection timetables.
#### Description
The lab must define the available dates and hours the test execution can take place. Operation timetable refers to appointments at the lab's place, whereas collection timetable regards the appointments where the sample is collected from the patient's place. 
#### User priority
(5/5) Without the timetables, labs' appointments have no meaning.
#### Technical priority
(4/5) Patients are unable to proceed with the appointment booking.
#### User story
https://github.com/konkarage/soft-eng/blob/master/requirements/lab.feature

### FR-23
The patient shall be able to add or remove a test from cart.
#### Description
When a patient views the details of a test, he must have the option to add it to cart. Moreover, he must be able to view the cart and remove tests from it.
#### User priority
(5/5) In order to book an appointment, the patient must be able to add to cart the tests of his preference or remove them from it. 
#### Technical priority
(4/5) Patients are unable to proceed with the appointment booking.
#### User story
https://github.com/konkarage/soft-eng/blob/master/requirements/cart.feature

## Use case diagrams

### Users and external systems
#### User 1: Patient

#### User 2: Lab

#### User 3: Admin

#### User 4: Guest

#### External System 1: SystemDB


### Use case diagram 1

![usecasediagram](https://cloud.githubusercontent.com/assets/15689115/21576614/69db1bd0-cf3f-11e6-94b8-80a54d0a697f.jpg)

### Use case diagram 2

![use_case_admin](https://cloud.githubusercontent.com/assets/15689115/21576615/74382ca8-cf3f-11e6-9f3f-3682cdb44c6a.jpg)

## Activity diagrams

### Activity diagram "Sign in to the system"
![activitydiagram1](https://cloud.githubusercontent.com/assets/15689115/21576618/805356de-cf3f-11e6-84ed-3a823cdd0b62.jpg)

### Activity diagram "A patient or a lab wants to create an account"
![activitydiagram2](https://cloud.githubusercontent.com/assets/15689115/21576633/cf8abf44-cf3f-11e6-8ff9-e3137dada62d.jpg)

### Activity diagram "A patient wants to acquire test results"
![activity diagram4](https://cloud.githubusercontent.com/assets/15689115/21577876/026c56be-cf74-11e6-82f8-b6a6ced32ca3.jpg)

### Activity diagram "A patient wants to book an appointment"
![activitydiagram3](https://cloud.githubusercontent.com/assets/15689115/21577840/6a1c0ed2-cf72-11e6-8b73-09a0257c344f.jpg)

### Activity diagram "A patient adds a test to cart during an appointment booking"
![activity diagram5](https://cloud.githubusercontent.com/assets/15689115/21577842/72e3f872-cf72-11e6-9459-a0d1304f0b8a.jpg)

## Mockups and storyboards

## Non-Functional Requirements
### NFR-1
The system shall support end to end public key encryption regarding the exchange of messages and files
#### Description
Due the sensitive nature of the information exchanged between the users, all communication between them should be done in an encrypted way, unreadable even by the administrator.
#### User priority
(4/5) Many users could be hesitant about using the system without this feature. 
#### Technical priority
(4/5) The system will remain fully functional without considering this requirement, but legal issues could be raised.

### NFR-2
The system should require that the results of each test should be available in pdf form.
#### Description
There users should be able to read the results without converting them. Pdf is the most widely used format for this purpose.
#### User priority
(4/5) There are good alternatives, but pdf will providde the most hassle-free experience.
#### Technical priority
(1/5) The backbone of the system can be implemented without pdfs in mind.

### NFR-3
The system's user interface should be implemented according to the Web Content Accessibility Guidelines (WCAG).
#### Description
The system should be usable from the widest possible userbase.
#### User priority
(4/5) Many of our users could be of above average age, so this requirement is of great importance.
#### Technical priority
(5/5) It is of great importance to set the foundation of such a design early on, to avoid massive code restructuring.

### NFR-4
The system shall allow many users to interact with it simultaneously.
#### Description
Each user should be able to interact with the system at will. One user using the system should not impede or degrade the experience of another user.
#### User priority
(5/5) Users do not like waiting or downtime.
#### Technical priority
(5/5) It is a fundamental requirement for the system and so of high priority.

### NFR-5
The system shall require the password of each user to be at least 8 character long, containing at least one uppercase and one lowercase letter, one number and one symbol.
#### Description
As stated before, the system will be a gateway to sensitive information, thus the passwords that the users identify themselves with should comply with strict security standards.
#### User priority
(3/5) It is a double edged sword. Users will enjoy the security on the long term but complain about the long passwords.
#### Technical priority
(5/5) Due to possible legal and business issues, the system should be secure from day one.

### NFR-6
The system should use SQL transactions to handle concurrency issues in the database.
#### Description
Each lab has a finite amount of timeslots for each day and it is possible that multiple patients try to make a booking for the timeslot at the same time. The system should be able to handle such conflicts.
#### User priority
(3/5) Conflicts are unlikely at the beginning and with a small number of users. Each one is detrimental to the user experience though.
#### Technical priority
(3/5) This feature is of medium technical importance.

### NFR-7
The system should support SMS messaging.
#### Description
The users should receive messages at certain events. These messages could be delivered either through the system itself or using the classic SMS.
#### User priority
(3/5) Although the users must have a certain degree of technological skills to use the system, many of them will be elders who are more comfortable with using SMS.
#### Technical priority
(1/5) The system will remain fully functional without considering this requirement.

### NFR-8
The system shall allow the patients to pay with credit cards, PayPal or bitcoins.
#### Description
Along with the traditional option to pay using cash, the patients should have the option to pay with the abovementioned online methods. Bitcoin is needed specifically, because it allows the patients to leave no trace of their medical activity outside of the system.
#### User priority
(3/5) This feature will make the system more convenient to use.
#### Technical priority
(1/5) The system will remain fully functional without considering this requirement.

### NFR-9
The system should be able to use IP and GPS geolocation services in order to estimate a user's location.
#### Description
The system should automatically show the patients the nearby laboratories.
#### User priority
(4/5) In many cases proximity to a lab is a very important criterion. Thus patients will benefit from this feature.
#### Technical priority
(2/5) The system will still provide the option to search the available labs by name.

### NFR-10
The system shall support files of size up to 500MB to be uploaded.
#### Description
Test results for cases of medical imaging are large in size, and the tendency is to get even bigger. Thus the system shall be able to handle such files.
#### User priority
(5/5) Medical imaging covers a wide range of common tests that the users shall be able to download.
#### Technical priority
(5/5) The ability to upload and download test results is fundamental for the system.

