Feature: Allow Estate Agent Staff to Access the system

  Background: A login page which allows Staff to login
  
    Given I am on the login page
    And have a valid username and password
    And the Estate Agent's license hasn't expired
    When I press login
    Then I should enter the system and see "Welcome"

  Scenario: Allow a property to be added to the system
    Given that I am on the add property page
    And I enter the *information*
    When I press add
    Then the property will be added to the system
    
  Scenario: Allow a new tenant to be created added to a property
  	Given that I am on the property page
  	And I click on the "Add Tenant" button
  	And I enter the tenant's information
  	When I click "create" the Tenant will be created
  	And the Tenant will be added to the property

