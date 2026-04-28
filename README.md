# MYSQL CASE
In MySQL, CASE is a conditional expression that functions like an if-then-else statement. It allows you to perform logical evaluations within a query and return specific results based on the first condition met.

Types of CASE Expressions
MySQL supports two primary forms of the CASE expression: 

Simple CASE: Compares a single expression or column to a list of literal values.

Syntax: CASE expression WHEN value1 THEN result1 [WHEN value2 THEN result2] ... [ELSE resultN] END.

Example: Useful for mapping specific IDs to names or categories.



Searched CASE: Evaluates multiple independent conditions (including ranges and complex logical operators).

Syntax: CASE WHEN condition1 THEN result1 [WHEN condition2 THEN result2] ... [ELSE resultN] END.

Example: Categorizing a product price as 'Low Cost' if < 20 or 'High Cost' otherwise.
