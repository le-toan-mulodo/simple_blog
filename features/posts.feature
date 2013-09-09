Feature: Posts 
	In order to manage articles
	As an user has permission
	I want cto able to create, update, delete the articles 
	
	Scenario: Create a new article when logged in the website
		Given a user visits the signin page
		And the user has an account
		When the user submits valid signin information
		And visit blog path		
		And move to another screen to create an article
		And fill in valid information to create an article 
		Then you should see the article in your page
	
	Scenario: Edit a new article when logged in the website
		Given a user visits the signin page
		And the user has an account
		When the user submits valid signin information as Admin
		And exist an article
		And visit blog path				
		And edit the first article
		And edit title, body of the article  
		Then you should see the updated article
		
		
	Scenario: Delete a new article when logged in the website
		Given a user visits the signin page
		And the user has an account
		When the user submits valid signin information as Admin
		And exist an article
		And visit blog path		
		And delete the first article		 
		Then you should no see the deleted article  
		
	