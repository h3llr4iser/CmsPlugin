@managing_blocks
Feature: Managing cms blocks
    In order to present some dynamic data in the store
    As an Administrator
    I want to be able to display and remove existing blocks.

    Background:
        Given the store operates on a single channel in "United States"
        Given I am logged in as an administrator

    @ui
    Scenario: Seeing dynamic blocks in admin panel
        Given there are "2" dynamic content blocks with "image" type
        And there are "3" dynamic content blocks with "text" type
        When I go to the cms blocks page
        Then I should see "2" dynamic content blocks with "image" type
        And I should see "3" dynamic content blocks with "text" type

    @ui
    Scenario: Removing single block
        Given there is a dynamic content block with "image" type
        When I go to the cms blocks page
        And I remove this image block
        Then I should be notified that this block was removed
        And no dynamic content blocks should appear in the store

    @ui
    Scenario: Being able to chose which block to create
        When I go to the cms blocks page
        Then I should be able to select between "Text block" and "Image block" block types under Create button