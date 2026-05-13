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

# Example 2):
# list all human users on the system
cat /etc/passwd | grep "/bin/bash" | cut -d: -f1
# Output: root
# Output: user1
# Output: user2
# In this example, the `cat /etc/passwd` command displays the contents of the /etc/passwd file, which contains user account information. 
# The `grep "/bin/bash"` command filters the output to show only lines that contain "/bin/bash", 
# and the `cut -d: -f1` command extracts just the usernames.
# This example shows that you can use multiple pipes to chain together several commands to achieve a specific result.