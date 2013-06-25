# Language: en
Feature: Standard Lines of Code
  In order to analize my code
  As a project manager
  I want to know the LOC metric
  
  Scenario Outline: Lines of code of a file
		Given the code in file <file>
	    When I calculate LOC metric
    	Then the result should be <output>
    
  Examples:
    | file                        	| output |
    | LocStandard01Simple.java  	| 21     |
    | LocStandard01Comments.java    | 21     |
