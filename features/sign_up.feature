Feature: Sign up
	In order to become a member of the website
	As a guest
	I want to register with the website
	
	Scenario: Sign up is failed			
		Given a guest visits the signup page	
		And he provide invalid signup information
		Then he should not become a member
	Scenario: Sign up successfully
		Given a guest visits the signup page
		When he provide valid signup information
		Then he should become a member
		
