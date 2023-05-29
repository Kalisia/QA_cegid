#language: en

Feature: Buy the products

@store
Scenario: Access the store to choose and buy the products
    When I access the store to choose the products
    Then I put in the cart to buy it