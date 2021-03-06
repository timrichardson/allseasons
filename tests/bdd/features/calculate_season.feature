Feature: Season calculator
    A site where you can find out the season.


Scenario: First form
    When I go to the convert page
    And I fill out the name "19 March test"
    And I fill out the date as [19] [3] [2017]
    And I select the location as Latitude 28.7 Longitude 77.1 
    And I submit the form
    Then I should see the following available calendars:
        southern meteorological
        southern astronomical
        Hindu


Scenario: Second form
    Given I have submitted the first form as follows:
        name: 19 March test
        day: 19
        month: 3
        year: 2017
        lat: 28.7
        lng: 77.1
    When I select the calendar "Hindu"
    And I submit the form
    Then I should see "The event of 19 March test, which occurred on 2017-03-19 at 28.7,77.1, according to the Hindu calendar fell during the season of Varsha!" 
