#!/bin/bash

# ---------------------------------------------------------------------------------------------------------------------

# Bash Default Values

# What are default values?
# Default values in bash are used to assign a value to a variable if it is not already set or if it is null.
# We do this because sometimes we want a variable to have a value even if the user doesn't assign one.

# Why use default values?
# Default values are useful when your script needs certain variables, and they need to have a value to function. (not a pun)

# How do default values work?
# The syntax for default values in bash is as follows:
# ${variable:-default_value}
# This means that if `variable` is not set or is null, it will use `default_value` instead.

# Example 1):
echo "What is your name?"
read name
echo "Hello, ${name:-stranger}!"
# Output: Hello, stranger!
# In this example, if the user does not enter a name and just presses enter, the variable `name` will be null, 
# and the default value "stranger" will be used in the greeting.

# Example 2):
echo "What is your favorite color?"
read color
echo "Your favorite color is ${color:=blue}."
# Output: Your favorite color is blue.
# In this example, if the user does not enter a color and just presses enter, the variable `color` will be null, 
# and the default value "blue" will be assigned to `color` and used in the output.
# Note: The `:=` operator not only provides a default value but also assigns it to the variable if it was null.

# What not to do:
# Don't forget that default values only work when the variable is null or unset
# Don't use default values if you want to provide a default value for a variable that is already set

# Examples of what to avoid:

# name="Alice"
# echo "Hello, ${name:-stranger}!"
# Output: Hello, Alice!
# Error: You are using a default value when the variable `name` is already set to "Alice". 
# The default value "stranger" will not be used.

# color="red"
# echo "Your favorite color is ${color:=blue}."
# Output: Your favorite color is red.
# Error: You are using a default value when the variable `color` is already set to "red".

