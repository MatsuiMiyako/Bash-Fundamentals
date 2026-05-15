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