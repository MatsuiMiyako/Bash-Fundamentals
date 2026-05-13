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

# Example 1):
ls /etc > etc_contents.txt
# This command lists the contents of the /etc directory and saves the output to a file called etc_contents.txt. 
# If the file already exists, it will be overwritten.

# Example 2):
sort < unsorted_list.txt > sorted_list.txt
# This command takes the contents of unsorted_list.txt as input to the sort command,
# and saves the sorted output to sorted_list.txt.

# Example 3):
ls /idontexist 2>> error_log.txt
# This command attempts to list the contents of a non-existent directory and saves the error message to a file called error_log.txt.
# If the file already exists, it will be appended to (added to the end of the file).

# What not to do:
# Don't forget that redirects will overwrite files if you use `>` instead of `>>`.
# Don't use redirects if you want to connect the output of one command to the input of another command (use pipes instead).
