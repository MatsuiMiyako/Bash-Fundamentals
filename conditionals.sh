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



