Feature: Allow an Estate Agent Manager/Owner to manage staff
  Background: An Estate Agent Manager/Owner is logged into the system
    Given I am on the login page
    And have a valid username and password
    When I press login
    Then I should enter the system and see "Welcome"


	Title: Manager adds a new Staff Member
	Narrative:
		As an Estate Agent Owner
		I want to be able to add new Staff Member
		So that they can access the system
		
  Scenario: Add a new Staff Member
    Given that I am on the "Add Staff" page
    And I enter the Employee's Username, Password, Name, Address, Contact Details
    And I set whether the Employee is an Admin or a User
    When I press "Add"
    Then the Staff Member will be added to the system.
    And be able to login with the Username and Password
    
    
    Title: Editing a Staff Member
	Narrative:
		As an Estate Agent Owner
		I want to be able Edit a Staff's Details
		So that I can update their Contact Information
		
  Scenario: Edit a Staff Member
  	Given I'm on the "Edit Staff" page
  	And I Tick on the Staff Member to Edit
  	And when I change the Information
  	When I click "Update"
  	Then I should be able to see the new Information
  	
  	
  	Title: Disbling a Staff Member
	Narrative:
		As an Estate Agent Owner
		I want to be able Disable a Staff Member
		So that they can no longer access the system
		
  Scenario: Disable a Staff Member
  	Given I'm on the "Edit Staff" page
  	And I Tick the Staff Member to Disable
  	When I click "Disable"
  	Then the Staff Member should be disabled
  	And not be able to login to the system
  
  
  Title: Manage Staff Holidays
	Narrative:
		As an Estate Agent Owner
		I want to be able to manage Staff Holidays
		So that they will appear on the calendar
		
  Scenario: Add a Staff Holiday
  	Given I'm on the "Staff Holidays" page
  	And I Add a new Staff Holiday
	And I choose the Staff Member from the drop down
  	And I pick a valid start and end date using the date picker
  	And I choose the approval state
  	When I click "Add Holiday"
  	Then I should be able to see the Holiday in the list
  	And it should be visible in the calendar on the correct dates
  	
  	
Scenario [id]: [title]
Given [context]
And [some more context]...
When [event]
Then [outcome]
And [another outcome]...
  	
  	
