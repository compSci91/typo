Feature: Create Category
  As an admin
  I want to create a category
  So that my users can better organize their blogs
  
  Background: 
    Given the blog is set up
    And I am logged into the admin panel 
  
  Scenario: Create a category
    Given I am on the create categories page
    When I fill in "category_name" with "Political"
    And I fill in "category_keywords" with "Trump Mueller Russia"
    And I fill in "category_permalink" with "permalink here"
    And I fill in "category_description" with "This is my description"
    And I press "Save"
    Then I should be on the admin categories page
    Then I should see "Political"
    Then I should see "Trump Mueller Russia"
    Then I should see "permalink here"
    Then I should see "This is my description"
    
    Then I follow "Political"
     And I fill in "category_keywords" with "Jessica Jones" 
    And I fill in "category_permalink" with "another permalink here"
    And I fill in "category_description" with "The second season wasn't that good."
    And I press "Save"
    Then I should be on the admin categories page
    Then I should see "Political"
    Then I should see "Jessica Jones" 
    Then I should see "another permalink here"
    Then I should see "The second season wasn't that good."
    
    