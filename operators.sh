#!/bin/bash

# ---------------------------------------------------------------------------------------------------------------------

# Bash Operators

# What are operators?
# Operators in Bash are used to determine if a condition is true or false.
# Basically, it allows your scripts to respond differently based on different conditions.

# Why use operators?
# Operators allow you to compare values, perform arithmetic operations, and manipulate strings.
# They are essential for making decisions in your scripts and controlling the flow of execution.
# It's kind of similar to conditionals, in the way that they both allow you to make decisions in your scripts.

# How do operators work?
# There are four main types of operators in Bash:
# - Test Operators for integer comparison
# - String Operators for string comparison
# - Logical Operators for combining conditions
# - File Operators for file comparison

# Test Operators for integer comparison
# These operators are used to compare integer values. Nothing fancy.

# Bash Operators                            Meaning
# -eq                                      Equal to
# -ne                                      Not equal to
# -gt                                      Greater than
# -lt                                      Less than
# -ge                                      Greater than or equal to
# -le                                      Less than or equal to

# Example 1):
read -p "Enter a number: " num
if [ $num -gt 0 ]; then
    echo "The number spreads positivity!"
else
    echo "The number spreads negativity!"
fi
# Example Output:
# Enter a number: 67
# The number spreads positivity!
# Basically, the script checks if your number is positive or negative by using the -gt operator and comparing it to 0.
# You can just replace the 'gt' operator with any of the other operators to compare your number in different ways.

# String Operators for string comparison
# These operators are used to compare string values. They are pretty straightforward.

# Bash Operators                            Meaning
# =                                       Equal to (but for strings) (literal matching)
# !=                                      Not equal to (but for strings)
# <                                       Less than (in ASCII alphabetical order)
# >                                       Greater than (in ASCII alphabetical order)
# ==                                      String is equal to (pattern matching)
# -z                                      String is null (empty)
# -n                                      String is not null (not empty)

# Example 2):
read -p "Enter your name: " name
if [ -z "$name" ]; then
    echo "You didn't enter a name!"
else
    echo "Hello, $name!"
fi
# Example Output:
# Enter your name:
# You didn't enter a name!
# In this example, the script checks if you entered a name or not by using the -z operator, 
# which checks if the string is empty. If you didn't enter anything, it tells you that you didn't enter a name. 
# Otherwise, it greets you by your name.

# Example 3):
read -p "Enter your favorite color: " color
if [ "$color" = "blue" ]; then
    echo "Blue is the best color!"
else
    echo "Booooooo join team blue or else..."
fi
# Example Output:
# Enter your favorite color: red
# Booooooo join team blue or else...
# In this example, the script checks if your favorite color is blue by using the = operator. 
# If you enter "blue", it confirms that it's the best color. 
# Otherwise you're cooked.