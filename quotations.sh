#!/bin/bash

# ---------------------------------------------------------------------------------------------------------------------

# Bash Quotations

# What are quotations?
# Quotations in Bash influence how the computer deals with the text that enclosed inside them.
# There are two types of quotations in Bash: 
#   - single quotes (' ')
#   - double quotes (" ")

# Why use quotations?
# Bash, by default, will read certain characters as special characters (e.g., $, *, ?, spaces, (, ), etc.)
# and will try to interpret them in a specific way.
# If you don't quote these characters, you might get unintended results or errors.

# How do quotations work?
# Single quotes (' '):
# When you enclose text in single quotes, everything inside is treated literally.
# This means that special characters will not be interpreted, and variables will not be expanded.
# Double quotes (" "):
# When you enclose text in double quotes, special characters will still be treated as special, but variables will be expanded.
# This means that if you have a variable inside double quotes, it will be replaced with its value.

