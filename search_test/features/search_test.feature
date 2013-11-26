Feature: Verify that a basic search works by verifying results and location
  I want a test that will run a simple search
  
  Scenario: Verify a search works with simple parameters
  Given I am on realestate.com.au
  And I click the state of Victoria
  And I select the suburb of Richmond
  And I choose Property Type Apartment
  And I set Max Price to 500,000
  Then when I search I should see corresponding results
    
    
   