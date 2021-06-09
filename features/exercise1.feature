Feature: Use ruby, cucumber, and page object model

  @test1 @all
  Scenario: Need to verify the right count of values appear on the screen
	#Given I have gotten to page 'https://www.exercise1.com/values'
	Given I have gotten to page 'file:///C:/Users/fancy/Documents/MassMutual2/sample.html'
	Then I verify right count of values
	
  @test2 @all
  Scenario: Need to verify the values on the screen are greater than 0
   #Given I have gotten to page 'https://www.exercise1.com/values'
   Given I have gotten to page 'file:///C:/Users/fancy/Documents/MassMutual2/sample.html'
   Then I verify values are greater than zero
  
  @test3 @all
  Scenario: Need to verify the values are formatted as currencies
    #Given I have gotten to page 'https://www.exercise1.com/values'
	Given I have gotten to page 'file:///C:/Users/fancy/Documents/MassMutual2/sample.html'
	Then I verify values in US currency
	
  @test4 @all
  Scenario: Need to verify the total balance matches the sum of the values
    #Given I have gotten to page 'https://www.exercise1.com/values'
	Given I have gotten to page 'file:///C:/Users/fancy/Documents/MassMutual2/sample.html'
	Then I verify values total math is correct
