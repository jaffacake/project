Feature: Allow a system administrator to add manage the Estate Agents
  Background: A login page which allows Admin to login
  
    Given I am on the login page
    And have a valid username and password
    When I press login
    Then I should enter the system and see "Welcome"


	Title: Admin adds an Estate Agent
	Narrative:
		As a System Admin
		I want to be able to add new Estate Agents
		So that they can access the system
		
  Scenario: Add a new Estate Agent
    Given that I am on the "Add Estate Agent" page
    And I enter the Estate Agent's Name, Address and the License expiry
    And I enter a User to the Estate Agent
    When I press "Add"
    Then the estate agent will be added to the system.
    And be able to login
    
    
    Title: Editing an Estate Agent's License
	Narrative:
		As a System Admin
		I want to be able extend an Estate Agent's License
		So that they can continue access the system
		
  Scenario: Extend an Estate Agent's License
  	Given on the admin page
  	And I find the Estate Agent and click "Edit"
  	And I enter the License extension
  	When I click "Update"
  	Then I should be able to see the new license expiry date
  
  
  Title: Disabling an Estate Agent
	Narrative:
		As a System Admin
		I want to be able to disable an Estate Agent's system
		So that they can't access the system
		
  Scenario: Disable an Estate Agent
  	Given that an Estate Agent needs disabling
  	And I found the estate Agent and clicked "Edit"
  	And I have ticked the "Disable" button
  	When I click Update
  	Then the Estate Agent will be greyed out
  	And the Estate Agent's staff will be unable to login.
  	
  	
  	
  	
Scenario [id]: [title]
Given [context]
And [some more context]...
When [event]
Then [outcome]
And [another outcome]...
  	
  	
