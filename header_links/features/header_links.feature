Feature: Verify the main header links match their landing pages
  I want a test that verifies the main header links go to their respective pages
  
  Scenario Outline: Verify header links
    Given I am on the http://www.realestate.com.au homepage 
    When I click the header <link>
    Then I should end up at <path> with <title>
    Examples:
      | link        | path                                | title              |
      | buy         | /buy                                | Sale               |
      | rent        | /rent                               | Rental             |
      | share       | /share                              | Share              |
      | new homes   | /new-homes/new-home+designs         | New House          | 
      | retire      | /retire                             | Retirement         |
      | find agents | /find-agent                         | Real Estate Agents |
      | home ideas  | /home-ideas                         | Home Ideas         |
      | blog        | /blog                               | Blog               |
      | commercial  | /commercial                         | Commercial         |