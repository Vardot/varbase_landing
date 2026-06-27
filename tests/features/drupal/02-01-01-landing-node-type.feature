@varbase_landing @node-type
Feature: Varbase Landing Page - Landing page content type
  As a site administrator
  I want a Landing page content type

  Background:
    Given I am a logged in user with the "Webmaster" user

  Scenario: The Landing page content type is listed
    When I go to "/admin/structure/types"
    Then I should see "Landing page (Paragraphs)"

  Scenario: The Landing page type provides the description field
    When I go to "/admin/structure/types/manage/landing_page/fields"
    Then I should see "Page description"

  Scenario: The Landing page create form loads
    When I go to "/node/add/landing_page"
    Then I should see "Create Landing page"
