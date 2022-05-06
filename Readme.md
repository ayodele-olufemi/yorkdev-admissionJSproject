# Instructions

Ask the user to input their 
* first name, 
* last name,
* UserID, and 
* birthdate in type date format.

The UserID must contain an **uppercase**, a **lowercase**, a **number**, and be **8 to 12 chars long**.

Create a JS function to verify formats of the UserID field.

You will need to use For Loop to iterate through your data fields letter by letter and JS functions like ```char.toUpperCase()``` and ```parseInt(char)```.

Use the following variables to hold the data:

* ```fname``` is first name.
* ```lname``` is last name.
* ```uid``` is UserID.
* ```birthday``` is birthday and type date

You have to write a function called ```dateDiff``` that accepts one date parameter and returns the number of days between the birthday provided and the current date.

Create an "Accept" button to execute your functions and create the following output:

* If the UserID does not pass your verification, then print "**Invalid UserID**"
* If the ```fname```, ```lname```, or ```birthday``` fields are empty then print “Invalid fname” etc…
* Print “```fname``` ```lname``` you have been breathing for ### days!” where ### is the number returned by your ```dateDiff()``` function. Remember to convert milliseconds to days and only return the integer (whole) number of days.
* If the number of days is less than ```(365*18)``` then print “You are probably not old enough to take this class!”
* Create a “Loop For” that loops 20 times and uses code similar to the one below to print lines of from 1 to 20 Xs.:
```javascript
let str = "";
str = str.padStart(i, "x"); // i is the loop counter
```

