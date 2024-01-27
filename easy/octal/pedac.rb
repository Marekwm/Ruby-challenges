=begin 
Implement octal to decimal conversion. Given an octal input string,
your program should produce a decimal output. Treat invalid input as octal 0.

Note: Implement the conversion yourself. Don't use any built-in or library methods
that perform the necessary conversions for you. In this exercise, the code necessary
to perform the conversion is what we're looking for.

About Octal (Base-8)

Decimal is a base-10 system. A number 233 in base 10 notation can be understood
as a linear combination of powers of 10:

The rightmost digit gets multiplied by 10^0 = 1
The next digit gets multiplied by 10^1 = 10
The digit after that gets multiplied by 10^2 = 100
The digit after that gets multiplied by 10^3 = 1000
...
The n*th* digit gets multiplied by 10^n-1.
All of these values are then summed.
Thus:
  233 # decimal
= 2*10^2 + 3*10^1 + 3*10^0
= 2*100  + 3*10   + 3*1
Octal numbers are similar, but they use a base-8 system. A number 233 in base
8 can be understood as a linear combination of powers of 8:

The rightmost digit gets multiplied by 8^0 = 1
The next digit gets multiplied by 8^1 = 8
The digit after that gets multiplied by 8^2 = 64
The digit after that gets multiplied by 8^3 = 512
...
The n*th* digit gets multiplied by 8^n-1.
All of these values are then summed.
Thus:
  233 # octal
= 2*8^2 + 3*8^1 + 3*8^0
= 2*64  + 3*8   + 3*1
= 128   + 24    + 3
= 155

P
The way to convert octal numbers to decimal numbers is to use base-8 in multiplication.

Going from right-to-left, we multiply each digit of the number by 8 raised to a certain power.

For the first digit (from the right), the power is 0. For the second digit, the power is 1.
This continues until we multiply each digit from the number.

Valid octal numbers only include digits 0 through 7.

E 
we need to create an Octal class. The class should have 2 methods as follows:

a constructor that accepts a string as an argument that represents an octal number.

a method (to_decimal) that converts the argument into decimal and returns it as a number.
We should return 0 if the argument has invalid characters such as letters or the digits 8 or 9.


A
constructor

Accepts a string as an argument that represents an octal number.

to_decimal

If any character of the string being converted is not 0, 1, 2, 3, 4, 5, 6, or 7, return 0.
/89[a-z]/i
Set a starting sum to 0.

Reverse the digits. .reverse

Iterate over digits one-by-one.
For the first digit, multiply it by 8**0, then add it to sum.
For the second digit, multiply it by 8**1, then add it to sum.
Keep multiplying and adding to sum until all digits are processed.
Return the sum.

=end 