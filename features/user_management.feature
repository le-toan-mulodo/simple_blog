Feature: 
	As an Admin 
	In order to manage normal users
	I want to able to delete  normal users
	
	Scenario: delete another user successfully
		Given a user visits the sign in page
		When the user has an account as Admin
		And he logged in as admin
		And exist users
		And he click manage users section		
		And he click delete the first user which ables to be deleted from this section
		Then that user should be gone away