Feature: Login Page

Scenario: Success Login with correct credential
    Given I am on the homepage
    When I fill my credential and click login
    Then I should be logged in

Scenario: Fail Login with wrong email
    Given I am on the homepage
    When I fill wrong username and click login
    Then I should be not logged in and see the error message
