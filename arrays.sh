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

# Example 4):
# You can append or remove elements from an array using the `+=` operator or by unsetting an index.
JusticeLeague+=("Hulk") 
echo "After adding Hulk, the Justice League consists of: ${JusticeLeague[*]}"
# Output: After adding Hulk, the Justice League consists of: Ironman, Captain America, Thor, Hulk
# The `+=` operator appends "Hulk" to the array
unset JusticeLeague[1] 
echo "After removing Captain America, the Justice League's team captain is ${JusticeLeague[0]}"
# Output: After removing Captain America, the Justice League's team captain is Ironman
# The `unset` command removes the second element "Captain America" from the array

# Example 5):
# You can also get the length of an array using `${#array_name[@]}`.
echo "The current members of the Justice League are: ${JusticeLeague[*]}"
echo "The Justice League has ${#JusticeLeague[*]} members."
# Output: The current members of the Justice League are: Ironman, Thor, Hulk
# Output: The Justice League has 3 members.
# The first line prints the current members of the Justice League.
# The second line uses `${#JusticeLeague[*]}` to get the number of elements in the array, 
# which is 3 after we removed "Captain America".

# Example 6):
# You can also loop through an array using a `for` loop.
echo "The Justice League members are:"
for member in "${JusticeLeague[@]}"; do
    echo "- $member"
done
# Output: The Justice League members are:
# Output: - Ironman
# Output: - Thor
# Output: - Hulk
# The `for` loop iterates through each element in the `JusticeLeague` array and prints it with a dash in front. 
# The loop uses `${JusticeLeague[@]}` to access all elements of the array.

# What not to do
# Don't forget that array indices start at 0, so the first element is at index 0, the second at index 1, and so on.
# Don't forget to use quotes around array elements if they contain spaces.
# Don't forget to use the correct syntax for creating and accessing arrays.
# Don't forget to use the correct syntax for appending and removing elements from arrays.
# Don't forget to use the correct syntax for getting the length of an array.
# Don't forget to use the correct syntax for looping through arrays.

# Examples of what to avoid:

# echo ${JusticeLeague[3]}
# Output: (empty)
# Error: This will print an empty string because there is no element at index 3 after we removed "Captain America".

# JusticeLeague+=(Black Widow)
# Output: (error)
# Error: This will cause an error because "Black Widow" is not quoted

# avengers = (Baatman Sooperman WoonderWomun)
# Output: (error)
# Error: This will cause an error because there should be no spaces around the equal sign when creating an array.

# Make sure to be careful when working with arrays and always check your syntax to avoid errors

# ---------------------------------------------------------------------------------------------------------------------
