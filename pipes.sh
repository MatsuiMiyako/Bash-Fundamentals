#!/bin/bash

# ---------------------------------------------------------------------------------------------------------------------

# Bash Pipes

# What are pipes?
# Pipes in bash are used to connect the output of one command to the input of another command.
# This basically allows you to chain commands together.

# Why use pipes?
# Pipes are useful when you want to process the output of one command with another command.
# This means you don't have to save the output of a command somewhere (like in a file) before using it with another command.

# How do pipes work?
# Syntax for pipes:
# command1 | command2
# This means that the output of `command1` will be passed as input to `command2`.

# Example 1):
ls /etc | grep "shadow"
# Output: gshadow
# Output: gshadow-
# Output: shadow
# Output: shadow-
# In this example, the `ls /etc` command lists the contents of the /etc directory, 
# and the `grep "shadow"` command filters the output to show only lines that contain the word "shadow".