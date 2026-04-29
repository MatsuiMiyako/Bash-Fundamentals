#!/bin/bash

# ---------------------------------------------------------------------------------------------------------------------

# Bash Arrays

# What are arrays?
# Arrays in bash is a single variable that can hold multiple values.
# These values can be accessed using an index, which starts at 0.
# Some languages start their array index at 1, but bash starts at 0, so keep that in mind.

# Why use arrays?
# Arrays are useful for storing and managing collections of data.
# They allow you to group related data together and access it easily using indices (numeric positions).
# For example, you can use an array to store a list of names, numbers, or whatever you else want.

# How do arrays work?
# To create an array in bash, you can use the following syntax:
# array_name=(value1 value2 value3 ...)
# You can also create an array using the `declare` command:
# declare -a array_name

# Example 1):
marvel_characters=(Baatman Sooperman WoonderWomun)
echo "Here is a list of my favourite Marvel characters: ${marvel_characters[@]}"
echo "${marvel_characters[1]} is my favourite! He can leap over puddles in a single jump!"
# Output: Here is a list of my favourite Marvel characters: Baatman Sooperman WoonderWomun
# Output: Sooperman is my favourite! He can leap over puddles in a single jump!
# The first line creates an array called `marvel_characters` with three values: "Baatman", "Sooperman", and "WoonderWomun".
# The second line uses `${marvel_characters[@]}` to print all the elements of the array.
# The third line replaces the '@' with the index '1' to print the second element of the array, which is "Sooperman".
# Observe that index 0 is "Baatman", index 1 is "Sooperman", and index 2 is "WoonderWomun".

# Example 2):
declare -a JusticeLeague
JusticeLeague[0]="Ironman"
JusticeLeague[1]="Captain America"
JusticeLeague[2]="Thor"
echo "The Justice League consists of: ${JusticeLeague[@]}"
# Output: The Justice League consists of: Ironman Captain America Thor
# The first line declares an array called `JusticeLeague` using the `declare` command.
# The next three lines assign values to the array using indices.
# The last line prints all the elements of the array using `${JusticeLeague[@]}`.

# Example 3):
# You can format the output of an array with commas and spaces using `IFS` (Internal Field Separator).
IFS=', ' # Set the Internal Field Separator to a comma and space
echo "The Justice League consists of: ${JusticeLeague[*]}"
# Output: The Justice League consists of: Ironman, Captain America, Thor
# The `IFS` variable is set to a comma and space, which means that when we use `${JusticeLeague[*]}`, 
# the elements of the array will be separated by a comma and space
# the asterisk '*' is used to print all the elements of the array, similar to '@', but it respects the `IFS` separator.