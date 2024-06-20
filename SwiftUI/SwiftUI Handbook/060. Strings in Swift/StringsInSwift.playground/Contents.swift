import UIKit

// Single line string
"Hello, world"

// Multiline string
"""
The White Rabbit put on his spectacles.  "Where shall I begin,
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on
till you come to the end; then stop."
"""

// Concatenated string
var firstString = "This is"
var secondString = "my concatenated string."
firstString + " " + secondString

// String interpolation
var age = 25
"I am \(age) years old."

// String includes
var myNewString = "The quick brown fox jumps over the lazy dog"
myNewString.contains("brown")

// Lowercase and uppercase
var myString = "Monday, Tuesday, Wednesday"
myString.lowercased()
myString.uppercased()
