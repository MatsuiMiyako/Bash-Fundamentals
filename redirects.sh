#!/bin/bash

# ---------------------------------------------------------------------------------------------------------------------

# Bash Redirects

# What are redirects?
# Redirects in bash are used to change the input or output of a command.
# This allows you to save the output of a command to a file, or to use the output of a command as input to another command.

# Why use redirects?
# Redirects are useful when you want to save the output of a command to a file, 
# or when you want to use the output of a command as input to another command without using pipes.

# How do redirects work?
# There are several types of redirects in bash:
# 1) Output Redirects:
#    - `>`: Redirects the standard output (stdout) of a command to a file, overwriting the file if it already exists.
#    - `>>`: Redirects the standard output (stdout) of a command to a file, appending to the file if it already exists.
# 2) Input Redirects:
#    - `<`: Redirects the standard input (stdin) of a command from a file
# 3) Error Redirects:
#    - `2>`: Redirects the standard error (stderr) of a command to a file, overwriting the file if it already exists.
#    - `2>>`: Redirects the standard error (stderr) of a command to a file, appending to the file if it already exists.