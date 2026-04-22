#!/bin/bash

# ---------------------------------------------------------------------------------------------------------------------

# Bash Conditionals

# What are conditionals?
# Conditionals in bash are used to perform different actions based on different conditions, 
# hence the word conditionals.
# Basically, they allow you to control the flow of your script based on certain criteria.

# Why use conditionals?
# Conditionals are important for making decisions in your scripts.
# They allow you to execute different blocks of code based on the outcome of a condition,
# which can be useful for tasks like error handling, user input validation, etc.

# How do conditionals work?
# The most common conditional statements in bash are `if`, `elif`, and `else`

# If statments
# The `if` statement is used to execute a block of code if a specified condition is true.
# It closes with `fi`, which is just `if` backwards for those who know how to read backwards.

# Example 1):
num=67
if [ $num -gt 50 ]; then
    echo "num is greater than 50"
fi
# Output: num is greater than 50
# The `if` statement checks if the variable `num` is greater than (-gt) 50, 
# and if it is, it executes the block of code inside the `if` statement.

# Example 2):
dog="Dooby Scoo"
man="Shaggy-haired fella"
if [[ $dog = "Dooby Scoo" ]] && [[ $man = "Shaggy-haired fella" ]]; then
    echo "You are watching the wrong show, you idiot."
fi
# Output: You are watching the wrong show, you idiot.
# The `if` statement checks if the variable `dog` is equal to "Dooby Scoo" 
# and if the variable `man` is equal to "Shaggy-haired fella".
# Since both conditions are true, it runs the block of code inside the `if` statement.

# Else statements
# The `else` statement is used to execute a block of code if the condition in the `if` statement is false.
# In other words, it executes when the `if` condition is not met.

# Example 3):
hero="spooderman"
if [ $hero = "spiderman" ]; then
    echo "With great power comes great responsibility."
else
    echo "With great responsibility comes great power."
fi
# Output: With great responsibility comes great power.
# The `if` statement checks if the variable `hero` is equal to "spiderman".
# Since `hero` is "spooderman", the condition is false, and it runs the else block of code.

# Elif statements
# The `elif` statement is used to check multiple conditions like a `if` statement.
# It stands for "else if" and allows you to check additional conditions if the previous `if` or `elif` conditions weren't met.

# Example 4):
read -p "Enter your age: " age
if [[ $age -lt 18 ]]; then
    echo "You are not of legal drinking age in Manitoba."
elif [[ $age -ge 18 ]] && [[ $age -lt 19 ]]; then
    echo "You are of legal drinking age in Manitoba, but not in Ontario."
else
    echo "You are of legal drinking age in Canada."
fi
# Output will depend on the age entered by the user.
# The `if` statement checks if the variable `age` is less than (-lt) 18, and if it is, it executes the first block of code.
# If the `if` condition is false, 
# it checks the `elif` condition to see if `age` is greater than or equal to (-ge) 18 and less than (-lt) 19,
# and if it is, it executes the second block of code.
# If both the `if` and `elif` conditions are false, it executes the `else` block of code.

# What not to do
# Make sure to use the correct syntax for your conditional statements.
# For example, don't forget to close your `if` statement with `fi`, 
# and make sure to use the correct operators for your conditions 
# (e.g., -gt for greater than, -lt for less than, = for string comparison, etc.)

# Example of what to avoid:
# if [ condition ]; then
#    random code here 
# Error: Missing fi to close the if statement, which will cause a syntax error.

# num=67
# if [ $num > 50 ]; then
#     echo "num is greater than 50"
# fi
# Error: Using the wrong operator (>) for numeric comparison, which will cause an error.

# Make sure to use the appropriate conditional statements based on your needs.

