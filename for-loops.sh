#!/bin/bash

# ---------------------------------------------------------------------------------------------------------------------

# Bash For Loops

# What is a for loop?
# For loops allow you to execute a block of code repeatedly for a specified number of times or over a range of values.

# Why use for loops?
# For loops are useful for iterating over lists, arrays, or ranges of numbers.
# They allow you to automate repititive tasks without having to write the same code multiple times.

# How do for loops work?
# Here is the basic syntax for a for loop:
# for counter in list; do
#     # do something exciting here
# done

# Example 1):
for i in {1..5}; do
    echo "number $i"
done
# Output: number 1
# Output: number 2
# Output: number 3
# Output: number 4
# Output: number 5
# In this example, the for loop repeats the code block 5 times because we specified the range {1..5}. 
# The variable i takes on the values from 1 to 5.
# The letter i is commonly used a the counter variable in for loops, but you can use any variable you like.

# Example 2):
subjects=("math" "ELA" "physical education")
for subject in "${subjects[@]}"; do
    echo "I have $subject today."
done
# Output: I have math today.
# Output: I have ELA today.
# Output: I have physical education today.
# In this example, we have an array called subjects that contains three elements.
# The for loop repeats over each element in the array and assigns it to the variable `subject`.
# The code block then prints out a message for each subject.

# Example 3):
for file in /home/$USER/*; do
    echo "Processing $file"
    # You can do more things here if you want
done
# Output: Processing /home/USER/Desktop
# Output: Processing /home/USER/Documents
# Output: Processing /home/USER/Downloads
# Output: Processing /home/USER/Music
# Output: Processing /home/USER/Pictures
# Output: Processing /home/USER/Videos
# In this example, the for loop repeats over all the files and directories in the user's home directory.
# The variable `file` takes on the value of each file or directory in the specified path, 
# and the code block prints out a message for each one.

# What not to do
# Don't forget to include the `do` and `done` keywords.
# Don't forget to use the correct syntax for the list or range you want to iterate over.
# Don't forget to use the correct variable name in the code block.



