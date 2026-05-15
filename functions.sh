#!/bin/bash

# ---------------------------------------------------------------------------------------------------------------------

# Bash Functions

# What is a function?
# A function is a reusable block of code. 
# It allows you to group a set of commands together and execute them whenever needed.

# Why use functions?
# Functions help you organize your code and avoid repetition.
# Using functions means you can call a block of code to use later and multiple times without having to rewrite it.

# How do functions work?
# Here is the basic syntax for a function:
# function_name() {
#     # do something exciting here
# }
# function_name

# Example 1):
function say_hello() {
    echo "Hello, World!"
}
say_hello
# Output: Hello, World!
# In this example, we define a function called `say_hello` that prints "Hello, World!".
# We call it by using its name without parentheses.

# Example 2):
function addition() {
    local num1=$1
    local num2=$2
    local sum=$((num1 + num2))
    echo "$num1 + $num2 = $sum"
}
addition 5 10
# Output: 5 + 10 = 15
# In this example, we define a function called `addition` that takes two parameters (num1 and num2), 
# calculates their sum, and prints the result.
# We call the function with `addition 5 10`, which passes the values 5 and 10 as arguments to the function.
# The local keyword is used to declare variables so that they are only accessible within the funciton.
# This means that if the variables `num1`, `num2`, and `sum` were used somewhere else in the script, 
# they would not interfere with the variables inside the function.

# Example 3):
function the_number() {
    local number=67
    echo $number
}
function get_number() {
    return_me=$(the_number)
    echo "The legendary number is... $return_me!"
}
get_number
# Output: The legendary number is... 67!
# In this example, we have two functions: `the_number` and `get_number`.
# The `the_number` function defines a local variable `number` and echoes its value.
# The `get_number` function calls `the_number` and stores its output in the variable `return_me`, which is then printed in a message.
# This demonstrates how you can use one function to call another function and utilize its output.

# What not to do with functions:
# Don't forget to call the function after defining it.
# Don't forget to include the parentheses when defining a function.
# Don't forget to pass the correct number of arguments when calling a function.

# Example of what to avoid:

# function say_hello() {
#     echo "Hello, World!"
# }
# Error: You defined the function `say_hello`, but you never called it, so nothing will happen.

# function say_hello {
#     echo "Hello, World!"
# }
# Error: You forgot to include the parentheses when defining the function, which means your script will not work properly.

# function addition() {
#     local num1=$1
#     local num2=$2
#     local sum=$((num1 + num2))
#     echo "$num1 + $num2 = $sum"
# }
# addition 5
# Error: You called the `addition` function with only one argument instead of two, which means the function will not work properly.

# Make sure to be careful when defining and calling functions, and always double-check your syntax and arguements.

# ---------------------------------------------------------------------------------------------------------------------