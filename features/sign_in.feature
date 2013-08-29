Feature: Sign in
	Scenario: Unsucessful signin
		Given a user visits the sign in page
		When he provide invalid signin information
		Then he should see an error message
	Scenario: Successful signin
		Given a user visits the signin page
		And the user has an account
		When the user submits valid signin information
		Then the user should see the profile page