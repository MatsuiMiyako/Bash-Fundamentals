#!/bin/bash

# ---------------------------------------------------------------------------------------------------------------------

# Bash brackets

# What are brackets?
# Believe it or not, there are differences between brackets: `[]`, `[[]]`; parentheses: `()`, `(())`;
# and curly braces: `{}`.
# Each symbol or symbols have a different job in bash and misuse can lead to unexpected behaviors in your scripts.

# Why use brackets?
# Brackets in bash are used for conditionals, parameters, arithmetic, and command grouping.
# Basically, mastering them will be helpful.

# How do brackets work?
# Parentheses `()`
# The current "shell" (a program that lets you interact with the operating system) is the "parent shell."
# Parentheses in Bash are used to create a subshell, a "child" that runs independantly from the current shell.
# Parenthese can also be used for command substution, which means that you can assign a command's output to a variable.

# Example 1):
(cd /etc; cat hostname)
# Output: my-computer-name
# The parentheses create a subshell where it changes your directory to `/etc`, which then runs the second command.
# The second command is also in the subshell, and is executed after the first command because of the semicolon (;),
# which allows for multiple commands to be executed in order.
# All of that is run in a subshell so your present working directory in the parent shell doesn't change.

# Example 2):
(age=17; grade=11; echo "My age is $age") # Output: My age is 17
echo "My grade is $grade" # Output: My grade is
# The variable `grade` is defined only in the subshell; the parent shell does not have the variable `grade`.

# Example 3):
name=$(tr 'a-z' 'n-za-m' <<< "fcbbqrezna")
echo "I am not the hero everybody wants, nor am I the hero everybody needs, but I am the hero that everyone gets."
echo "I am... $name!"
# Output: I am not the hero everybody wants, nor am I the hero everybody needs, but I am the hero that everyone gets.
# Output: I am... spooderman!
# First, `$(...)` syntax gets the output of a command and assigns it to the variable `name`.
# Next, the `tr` command performs a ROT13 translation (basically shifting all the letters 13 places to the right).
# Lastly, the `<<<` operator passes a string directly into a command.

# Double parentheses `(( ))`
# Double parentheses are used for arithmetic operations in bash.

# Example 4):
x=9
y=10
echo "The sum of $x and $y is $((x + y + 2))! haha"
# Output: The sum of 9 and 10 is 21! haha
# The double parentheses allowed for the addition of the variables `x` and `y` and the number '2'

# Brackets `[]`
# Brackets are used for test expressions in bash. 
# They are used to evaluate conditions and return a status code (0 for true, 1 for false).

# Example 5):
num=67
if [ $num -gt 0 ]; then
    echo "num is positive"
fi
# Output: num is positive
# The brackets allowed for the evaluation of the condition `$num -gt 0`, which checks if the variable `num` is greater than (-gt) 0,
# which is true since `num` is 67.

# Example 6):
str1="batman"
str2="ironman"
if [ "$str1" = "$str2" ]; then
    echo "The two people are the same."
else
    echo "The two people are not the same."
fi
# Output: The two people are not the same.
# The brackets allowed for the evaluation of the condition `"$str1" = "$str2"`, which checks if the two strings are equal.
# Since `str1` is "batman" and `str2` is "ironman", the condition is false, and it executes the else statement.

# Double brackets `[[ ]]`
# Double brackets are basically the sigma version of brackets; they have more aura than single brackets...
# With single brackets. you must quote your variables if it is empty or it contains spaces.
# Double brackets allow for optional quoting.

# Example 7):
str1="batman"
str2="ironman"
if [[ $str1 = $str2 ]]; then
    echo "The two people are still the same."
else
    echo "The two people are still not the same."
fi
# Output: The two people are still not the same.
# Double brackets make it so bash isn't so stingy about quotes inside them

# Example 8):
i_am_empty=""
if [[ $i_am_empty == full ]]; then
    echo "go empty the trash, you lazy dog"
else
    echo "you got lucky this time"
fi
# Output: you got lucky this time
# The string 'full' is unquoted here but it's fine because it's double brackets
# The variable `i_am_empty` is also an empty variable, which is treated as "missing arguement" using single brackets

# Curly Braces `{}`
# Curly braces allow for brace expansion, a feature to generate a sequence of strings quickly. 
# It can also be used to clarify where the variable name ends.

# Example 9):
echo {0..10..2}
echo {L..P}
echo {A..C}{1..3}
# Output: 0 2 4 6 8 10
# Output: L M N O P
# Output: A1 A2 A3 B1 B2 B3 C1 C2 C3
# This allows for number sequences and character ranges to be generated quickly

# Example 10):
real="Super"
fake="Bat"

echo "The real superhero is ${real}man and not ${fake}man. T-T"
# Output: The real superhero is Superman and not Batman. T-T
# Without curly braces, e.g., $realman or $fakeman, Bash would look for unintended variable names

# What not to do
# Don't use empty variables with single brackets; use double brackets instead
# Don't forget to use quotes around strings with spaces in single brackets
# Don't do math in single brackets
# Don't forget to use curly braces for variable names in strings
# Don't use parentheses when a subshell is not needed
# Don't use unsupported operators in double brackets

# Examples of what to avoid:

# if [ $i_am_empty == full ]; then
# Error: variables don't have quotes

# str1="bat man"
# str2="bat man"
# if [ $str1 = $str2 ]; then
# Error: unquoted variables that have spaces 

# if [ 5 + 10 -gt 10]; then
# Error: arithmetic is done in double parentheses `(())`

# (x=42)
# echo $x
# Error: unnecessary subshell

# num=7
# if [[ $num >< 10 ]]; then
# Error: unsupported operators in double brackets

# Make sure to use appropriate brackets

# ---------------------------------------------------------------------------------------------------------------------
