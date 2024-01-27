=begin
Write a program that can generate the lyrics of the 99 Bottles of Beer song.
See the test suite for the entire song.


P 
create a class that has a class method to play the entire song 
a class method that specifies what line of the song to play
another class method that specifies what line(s) of the song to play

E
The class we need to create is called BeerSong

the first class method verse will take one integer argument that will play 1 verse of the song based on the number
ex: 21
21 bottles of beer on the wall, 21 bottles of beer.\n
Take one down and pass it around, 20 bottles of beer on the wall.\n\n


the second class method verse will take 2 integer argument that will play the verses from the first down to the second
integer argument 

the last will play the entire song 

once the verses reach the 0 the song will be 

No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.



Method: verse

Each line of the verse (there are two) should be separated by a newline
All mentions of the number of bottles should be replaced with the method's argument.
Return the verse string


Method: verses

The second argument should be less than the first, but greater than or equal to zero.
The first argument should be less than 100.
We can start with an empty string or array to hold our results
Count down from the first argument to the second (inclusive)
Handle verses that need either the singular bottle or no more bottles.
The verse when one bottle remains starts out as "Take it down" instead of "Take one down".
Add the string verse for each of these numbers to our result
Return result as a string


Method: lyrics

Build up a string containing all 100 verses of the song.
The verses should count down from 99 to "no more".
Each line of the verse should be separated by a newline.
Each unique verse should be separated by a blank line (2 newlines).
Return the string containing full lyrics.