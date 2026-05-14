#!/bin/bash

# ---------------------------------------------------------------------------------------------------------------------

# Bash For Loops

# What is a for loop?
# For loops allow you to execute a block of code repeatedly for a specified number of times or over a range of values.

# Why use for loops?
# For loops are useful for iterating over lists, arrays, or ranges of numbers.
# They allow you to automate repititive tasks without having to write the same code multiple times.

# How do for loops work?
# Here is the basic syntax for a for loop:
# for counter in list; do
#     # do something exciting here
# done

# Example 1):
for i in {1..5}; do
    echo "number $i"
done
# Output: number 1
# Output: number 2
# Output: number 3
# Output: number 4
# Output: number 5
# In this example, the for loop repeats the code block 5 times because we specified the range {1..5}. 
# The variable i takes on the values from 1 to 5.
# The letter i is commonly used a the counter variable in for loops, but you can use any variable you like.