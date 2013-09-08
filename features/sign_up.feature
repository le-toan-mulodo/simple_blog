Feature: Sign up
	In order to become a member of the website
	As a guest
	I want to register with the website
		
	Scenario: Sign up successfully
		Given a guest visits the signup page
		When he provide valid signup information
		And he click Create Account
		Then he should become a member
				
	Scenario: Sign up is failed because of emtpy name			
		Given a guest visits the signup page	
		When he provide invalid signup information with name is empty
		And he click Create Account
		Then he should not become a member
		
	Scenario: Sign up is failed because of emtpy email			
		Given a guest visits the signup page	
		When he provide invalid signup information with email is empty
		And he click Create Account
		Then he should not become a member
		
	Scenario: Sign up is failed because of invalid email			
		Given a guest visits the signup page	
		When he provide invalid signup information with email is "sdf"		
		And he click Create Account
		Then he should not become a member
		
	Scenario: Sign up is failed because of empty password			
		Given a guest visits the signup page	
		When he provide invalid signup information with password is emtpy		
		And he click Create Account
		Then he should not become a member
		
	Scenario: Sign up is failed because of invalid password			
		Given a guest visits the signup page	
		When he provide invalid signup information with password is "sdf"		
		And he click Create Account
		Then he should not become a member