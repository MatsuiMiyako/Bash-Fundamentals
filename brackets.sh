#!/bin/bash

# ---------------------------------------------------------------------------------------------------------------------

# Bash brackets

# What are brackets?
# Believe it or not, there are differences between brackets: `[]`, `[[]]`; parentheses: `()`, `(())`;
# and curly braces: `{}`.
# Each symbol or symbols have a different job in bash and misuse can lead to unexpected behaviors in your scripts.

# Why use brackets?
# Brackets in bash are used for conditionals, parameters, arithmetic, and command grouping.
# Basically, mastering them will be helpful.

# How do brackets work?
# Parentheses `()`
# The current "shell" (a program that lets you interact with the operating system) is the "parent shell."
# Parentheses in Bash are used to create a subshell, a "child" that runs independantly from the current shell.
# Parenthese can also be used for command substution, which means that you can assign a command's output to a variable.

# Example 1):
(cd /etc; cat hostname)
# Output: my-computer-name
# The parentheses create a subshell where it changes your directory to `/etc`, which then runs the second command.
# The second command is also in the subshell, and is executed after the first command because of the semicolon (;),
# which allows for multiple commands to be executed in order.
# All of that is run in a subshell so your present working directory in the parent shell doesn't change.

# Example 2):
(age=17; grade=11; echo "My age is $age") # Output: My age is 17
echo "My grade is $grade" # Output: My grade is
# The variable `grade` is defined only in the subshell; the parent shell does not have the variable `grade`.

# Example 3):
name=$(tr 'a-z' 'n-za-m' <<< "fcbbqrezna")
echo "I am not the hero everybody wants, nor am I the hero everybody needs, but I am the hero that everyone gets."
echo "I am... $name!"
# Output: I am not the hero everybody wants, nor am I the hero everybody needs, but I am the hero that everyone gets.
# Output: I am... spooderman!
# First, `$(...)` syntax gets the output of a command and assigns it to the variable `name`.
# Next, the `tr` command performs a ROT13 translation (basically shifting all the letters 13 places to the right).
# Lastly, the `<<<` operator passes a string directly into a command.