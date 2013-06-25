# Language: en
Feature: Standard Lines of Code, comments don't count
  In order to analize my code
  As a project manager
  I don't want LOC metric to count comments or blank lines
  
  Scenario Outline: Lines of code of a piece of code
		Given this <piece_of_code>
	    When I calculate LOC metric
    	Then the result should be <output>
    

  Examples:
    | piece_of_code                   	| output |
    |// this is a comment  	            | 0      |
    |      		// this is a comment    | 0      |
    | /* this is a comment   	        | 0      |
    | /* this is a comment */  	        | 0      |
    | "This is // not a comment"        | 1      |
    | "This is /* not a comment*/"      | 1      |
    | 'This is // not a comment'        | 1      |
    | 'This is /* not a comment*/'      | 1      |
