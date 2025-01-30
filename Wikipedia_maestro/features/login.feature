Feature: User sign in on Wikipedia
    Background:
        Given the user is on the Wikipedia onboarding page
        When the user clicks on skip button
        Then the user is on the homepage of Wikipedia as a guest
        When the user taps the plus icon in the navigation bar
        And the user clicks on connect link
        Then the user is on the sign up page
        And the user clicks on connect button

    Scenario: Successful sign in with valid credentials
        Given the user is on the Wikipedia sign in page
        When the user enters a valid username "YassirTest"
        And the user enters a valid password "Test@123"
        And the user clicks on the login button
        Then the user should be redirected to the homepage
        When the user taps the plus icon in the navigation bar
        Then the user should see his username displayed on the bottom sheet

    Scenario Outline: Sign in with invalid credentials
        Given the user is on the Wikipedia sign in page
        When the user enters the username "<username>"
        And the user enters the password "<password>"
        And the user clicks on the login button
        Then the user should see an error message "<error_message>"

        Examples:
            | username   | password | error_message                                                                                    |
            | YassirTest | yassir   | Vous ne pourrez plus vous connecter aux wikis de Wikimedia. Veuillez si vous avez des questions. |
            | Test       | Test@123 | Vous ne pourrez plus vous connecter aux wikis de Wikimedia. Veuillez si vous avez des questions. |
            | Test       | yassir     | Vous ne pourrez plus vous connecter aux wikis de Wikimedia. Veuillez si vous avez des questions. |

