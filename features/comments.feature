
Feature: Comments 
	In order to create or delete comments
	As an user has permission
	I want to create or delete comments
	
	Scenario: Create a comment successfully
		Given a user visits the signin page
		When the user has an account
		And exist an article
		And the user submits valid signin information		
		And visit blog path
		And read the first article
		And send a comment for the article
		Then a number of comments should increase
