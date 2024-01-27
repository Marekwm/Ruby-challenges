=begin
Write a program that, given a natural number and a set of one or more other numbers,
can find the sum of all the multiples of the numbers in the set that are less than the first number.
If the set of numbers is not given, use a default set of 3 and 5.

For instance, if we list all the natural numbers up to, but not including, 20 that are multiples 
of either 3 or 5, we get 3, 5, 6, 9, 10, 12, 15, and 18. The sum of these multiples is 78.

P 
given a number and a set of one or more numbers 
find all the unique multiples of the default (3 and 5) or the given set up to but not including the given number
then return the sum of the multiples 

E 
The test case shows that we need a SumOfMultiples class with 3 methods 
the constructor method should take a set of numbers 
if no argument is given then the default will the 3 and 5 

the (to) instance method will take an argument that will represent the max number to find the 
multiples up to 
then return the sum of the multiples 

the (to) class method act the same of the instance method but for the class 

D 
the sets of numbers should be stored in an array 
the multiples should also be stored in an array 

A 
create the class 
  the class method 
    create a new instance of the class and call the instance to method with the arugment upon it 

  -constructor method -one argument (default (3,5))
  take the set of numbers and assign it to @multiples 
  
  
  to method 
  create an empty array called numbers 
    iterate over the array of multiple one at a time 
      using that number iterate from 1 upto the max number minus 1 
        add the current number if the multiple divided by the current number is evenly divisible 
  make all the element in the array uniq and return the sum
