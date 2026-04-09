#!/bin/bash

# What are variables?
# Variables are names given to the computer that can store values or data.
# Basically, think of it as storing 'object(s)' in a 'box'. 

# Why use variables?
# You may want to store some data for ease of access or later usage. 
# You can also manipulate or change the value of the variable to make programs flexible.

# How do variables work?
# In Bash, variables are untyped, which means they can hold any type of value.
# Other languages may need you to declare what type of 'object(s)' can go into the 'box.'

# Example 1):
first_name="Gill"
last_name="Bates"

echo $first_name 				# this will 'echo' the value of the variable `first_name
echo $last_name 				# this will 'echo' the value of the variable `last_name`

# Example 2):
fullName="Gill Bates"			# there are different naming conventions; this is called 'camel case'
echo $fullName 					# this will 'echo' the value of the variable `fullName`

# Example 3):
# One day, Gill Bates got tired of people asking him if he was related to some random weirdo named "Bill Gates."
# He decides to change his name:
first_name="Jeve"				# the variable `first_name` has a new value now
last_name="Stobs"				# the variable `last_name` has a new value as well

echo $first_name 				# this will 'echo' the value of the variable `first_name`
echo $last_name 				# this will 'echo' the value of the variable `last_name`









