@varbase_landing @permissions
Feature: Varbase Landing Page - create access by role
  Scenario: Anonymous users cannot create a landing page
    Given I am an anonymous user
    When I am on "/node/add/landing_page"
    Then I should see "Access denied"

  Scenario: Authenticated users without permission cannot create a landing page
    Given I am a logged in user with the "Normal user" user
    When I am on "/node/add/landing_page"
    Then I should see "Access denied"

  Scenario: Landing editors can open the landing page create form
    Given I am a logged in user with the "Landing editor" user
    When I am on "/node/add/landing_page"
    Then I should see "Create Landing page"
