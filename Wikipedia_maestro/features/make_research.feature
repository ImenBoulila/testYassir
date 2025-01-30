Feature: Search for an article after sign in to Wikipedia

 
  Scenario: Search for an article after sign in
    Given the user is sign in on the Wikipedia app with valid credentials
    When the user taps the search bar
    And the user types "intel"
    Then the list of results should be displayed
    When the user scroll on the list of results
    And the user tap on "Liste des microprocesseurs Intel"
    Then the article should be displayed
    When the user clicks on back button
    And the list of results is displayed
    And the user clicks on back button
    Then the homepage should be displayed
    When the user taps the plus icon in the navigation bar
    And the user see his username displayed on the bottom sheet
    And the user click on setting
    And the user scrolls down to the bottom of the page
    And the user click on log out
    Then the pop up notification should be displayed
    When the user clicks on log out
    Then the user is on the homepage of Wikipedia as a guest