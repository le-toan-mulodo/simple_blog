Feature: Sign in
	In order to write an article and comment
	As normal user
	I want to log in into the webpage
	
	Scenario: Unsucessful signin
		Given a user visits the sign in page
		When he provide invalid signin information
		Then he should see an error message
	Scenario: Successful signin
		Given a user visits the signin page
		And the user has an account
		When the user submits valid signin information
		Then the user should see the profile page
		
Feature: Sign out
	In order to write an article and comment sd
	As normal user df
	I want to log in into the webpage dfdf
	
	Scenario: Unsucessful signin sdfsd
		Given a user visits the sign i n page sdfsd
		When he provide invalid signin information sdf sd
		Then he should see an error messagef sdfsd f
		
	Scenario: Successful signinsdfsd 
		Given a user visits the signin page sdfsd fsd
		And the user has an accountsdf sdf
		When the user submits valid signin information fsd fs dfsd
		Then the user should see the profile page sdfsdf