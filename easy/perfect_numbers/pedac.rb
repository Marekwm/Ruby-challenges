=begin
The Greek mathematician Nicomachus devised a classification scheme for natural numbers (1, 2, 3, ...),
identifying each as belonging uniquely to the categories of abundant, perfect, or deficient based
on a comparison between the number and the sum of its positive divisors
(the numbers that can be evenly divided into the target number with no remainder,
excluding the number itself).
For instance, the positive divisors of 15 are 1, 3, and 5. This sum is known as the Aliquot sum.

Perfect numbers have an Aliquot sum that is equal to the original number.
Abundant numbers have an Aliquot sum that is greater than the original number.
Deficient numbers have an Aliquot sum that is less than the original number.
Examples:

6 is a perfect number since its divisors are 1, 2, and 3, and 1 + 2 + 3 = 6.
28 is a perfect number since its divisors are 1, 2, 4, 7, and 14 and 1 + 2 + 4 + 7 + 14 = 28.
15 is a deficient number since its divisors are 1, 3, and 5 and 1 + 3 + 5 = 9 which is less than 15.
24 is an abundant number since its divisors are 1, 2, 3, 4, 6, 8, and 12 and 1 + 2 + 3 + 4 + 6 + 8 + 12 = 36 which is greater than 24.
Prime numbers 7, 13, etc. are always deficient since their only divisor is 1.

Write a program that can tell whether a number is perfect, abundant, or deficient.

P 
The Aliquot sum is the sum of all the numbers positive divisors not including the number itself
Perfect numbers have an Aliquot sum that is equal to the original number.
Abundant numbers have an Aliquot sum that is greater than the original number.
Deficient numbers have an Aliquot sum that is less than the original number.

Given a number have your class method determine whether your number is Perfect, abundant or deficient  

E
Based on the Test cases I can see that we have a class PerfectNumber that has one class method 
  classify 
  will raise an argument if the number is invalid(less than or equal to 0)
  only natural numbers are accepted 
  the sum will than be calculated and on of the 3 strings will be returned 
  
D 
the string will used a the return value 
but other than that only integers will be used 


A 
create a PerfectNumber class 
create the classify class methods that takes an integer as an arugment 
 raise a StandardError if the argument is not a natural number
 pass the number to the find_divisor method and assign the sum to `sum_of_divisors`
 
 use a case statement to for sum_of_divisors 
 if it's equal to the number then return 'perfect'
 if it's greater than the number then return 'abundant'
 if it's less then return 'deficient'
=end
