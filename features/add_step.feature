@add_step
Feature: Product details

  @easy
  Scenario: User opens item details for a product
    Given You are on the front page
    When Enter "swimming pool" in the search field
    When Press key "enter"
    Then Assert search results show up
    Then Open detail page for the 4. result
