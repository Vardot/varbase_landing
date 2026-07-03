@varbase_landing @content
Feature: Varbase Landing Page - landing page content
  As a content editor
  I want to create landing pages

  Background:
    Given I am a logged in user with the "Webmaster" user

  Scenario: An author creates and saves a landing page
    When I create a landing page titled "Spring Campaign Landing"
    Then I should see "has been created"

  Scenario: A created landing page appears in the content admin
    When I create a landing page titled "QA Landing Page"
    And I go to "/admin/content"
    Then I should see "QA Landing Page"
