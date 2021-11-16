Feature: Register test to indihome website

    Scenario: As user i can sign up to indihome website using unregistered account
    Given I visit indihome website
    Then I click Login/Register button
    Then I choose Register
    Then I fill the form using unregister account
    When I click register now button
    Then I should have a pop up message
