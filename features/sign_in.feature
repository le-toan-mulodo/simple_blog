Feature: Sign in
	In order to write an article and comment
	As normal user
	I want to log in into the webpage
	
	Scenario: Unsucessful signin because of empty email
		Given a user visits the sign in page
		When he submit invalid signin information with email is empty
		Then he should see an error message
	
	Scenario: Unsucessful signin because of empty email
		Given a user visits the sign in page
		When he submit invalid signin information with email is "sdf"
		Then he should see an error message
	
	Scenario: Unsucessful signin because of empty password
		Given a user visits the sign in page
		When he submit invalid signin information with password is empty
		Then he should see an error message
	
	Scenario: Successful signin
		Given a user visits the signin page
		And the user has an account
		When the user submits valid signin information
		Then the user should see the profile page
		
		
		
