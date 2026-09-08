Feature: Login functionality
  As a user of the application
  I want to log in with valid or invalid credentials
  So that I can access secure content or see an appropriate error message

  Background:
    Given the user is on the login page

  Scenario: Successful login with valid credentials
    When the user logs in with username "tomsmith" and password "SuperSecretPassword!"
    Then the user should see a message containing "You logged into a secure area"

  Scenario: Unsuccessful login with invalid username
    When the user logs in with username "invalidUser" and password "SuperSecretPassword!"
    Then the user should see a message containing "Your username is invalid!"

  Scenario: Unsuccessful login with invalid password
    When the user logs in with username "tomsmith" and password "wrongPassword"
    Then the user should see a message containing "Your password is invalid!"

  Scenario Outline: Login attempts with multiple credential sets
    When the user logs in with username "<username>" and password "<password>"
    Then the user should see a message containing "<expectedMessage>"

    Examples:
      | username     | password               | expectedMessage                  |
      | tomsmith     | SuperSecretPassword!   | You logged into a secure area    |
      | tomsmith     | wrongPassword          | Your password is invalid!        |
      | invalidUser  | SuperSecretPassword!   | Your username is invalid!        |
