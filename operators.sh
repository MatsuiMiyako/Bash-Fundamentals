#!/bin/bash

# ---------------------------------------------------------------------------------------------------------------------

# Bash Operators

# What are operators?
# Operators in Bash are used to determine if a condition is true or false.
# Basically, it allows your scripts to respond differently based on different conditions.

# Why use operators?
# Operators allow you to compare values, perform arithmetic operations, and manipulate strings.
# They are essential for making decisions in your scripts and controlling the flow of execution.
# It's kind of similar to conditionals, in the way that they both allow you to make decisions in your scripts.

# How do operators work?
# There are four main types of operators in Bash:
# - Test Operators for integer comparison
# - String Operators for string comparison
# - Logical Operators for combining conditions
# - File Operators for file comparison

# Test Operators for integer comparison
# These operators are used to compare integer values. Nothing fancy.

# Bash Operators                            Meaning
# -eq                                      Equal to
# -ne                                      Not equal to
# -gt                                      Greater than
# -lt                                      Less than
# -ge                                      Greater than or equal to
# -le                                      Less than or equal to

# Example 1):
read -p "Enter a number: " num
if [ $num -gt 0 ]; then
    echo "The number spreads positivity!"
else
    echo "The number spreads negativity!"
fi
# Example Output:
# Enter a number: 67
# The number spreads positivity!
# Basically, the script checks if your number is positive or negative by using the -gt operator and comparing it to 0.
# You can just replace the 'gt' operator with any of the other operators to compare your number in different ways.

# String Operators for string comparison
# These operators are used to compare string values. They are pretty straightforward.

# Bash Operators                            Meaning
# =                                       Equal to (but for strings) (literal matching)
# !=                                      Not equal to (but for strings)
# <                                       Less than (in ASCII alphabetical order)
# >                                       Greater than (in ASCII alphabetical order)
# ==                                      String is equal to (pattern matching)
# -z                                      String is null (empty)
# -n                                      String is not null (not empty)

# Example 2):
read -p "Enter your name: " name
if [ -z "$name" ]; then
    echo "You didn't enter a name!"
else
    echo "Hello, $name!"
fi
# Example Output:
# Enter your name:
# You didn't enter a name!
# In this example, the script checks if you entered a name or not by using the -z operator, 
# which checks if the string is empty. If you didn't enter anything, it tells you that you didn't enter a name. 
# Otherwise, it greets you by your name.

# Example 3):
read -p "Enter your favorite color: " color
if [ "$color" = "blue" ]; then
    echo "Blue is the best color!"
else
    echo "Booooooo join team blue or else..."
fi
# Example Output:
# Enter your favorite color: red
# Booooooo join team blue or else...
# In this example, the script checks if your favorite color is blue by using the = operator. 
# If you enter "blue", it confirms that it's the best color. 
# Otherwise you're cooked.

# Example 4):
read -p "Enter a type of meat: " word
# if the word contains meat 
if [[ "$word" == *meat* ]]; then
    echo "You follow proper logic!"
else
    echo "How does your word even correspond to the animal meat that you just entered?"
fi
# Example Output:
# Enter a type of meat: chicken
# How does your word even correspond to the animal meat that you just entered?
# Basically the script checks if the word you entered contains the substring "meat" by using the == operator and asterisks.
# If it does contain "meat", it confirms that you follow proper logic. 
# Otherwise, it questions how your sanity because the word you entered does NOT correspond to the animal meat that you entered 
# in ANY way, shape, or form.

# Logical Operators for combining conditions
# These operators are used to combine multiple conditions in your scripts.

# Bash Operators                            Meaning
# &&                                      Logical AND (both conditions must be true)
# ||                                      Logical OR (at least one condition must be true)
# !                                       Logical NOT (negates a condition)
# -a                                      Logical AND (both conditions must be true) (alternative syntax)
# -o                                      Logical OR (at least one condition must be true) (alternative syntax)

# Example 5):
read -p "Enter a number: " num
if [ $num -gt 0 ] && [ $num -lt 100 ]; then
    echo "The number is between 0 and 100!"
else
    echo "The number is not between 0 and 100!"
fi
# Example Output:
# Enter a number: 67
# The number is between 0 and 100!
# The script checks if your number is between 0 and 100 non inclusive
# Both conditions must be true for it to confirm that your number is between 0 and 100 by using the && operator.
# If either condition is false, it tells you that your number is not between 0 and 100.

# Example 6):
read -p "Enter a number again: " num
if ! [ $num -gt 0 ]; then
    echo "The number does not spread positivity!"
else
    echo "The number spreads positivity!"
fi
# Example Output:
# Enter a number: 67
# The number spreads positivity!
# In this example, the script checks if your number is NOT greater than 0 by using the ! operator.
# If your number is not greater than 0, it tells you that your number does not spread positivity because it's not positive.
# Otherwise, it confirms that your number spreads positivity :P

# Example 7): use -o
read -p "Enter a number again again: " num

if [ "$num" -lt 67 -o "$num" -gt 67 ]; then
    echo "The number is not legendary!"
else
    echo "The number is legendary!"
fi
# Example Output:
# Enter a number again again: 67
# The number is legendary!
# In this example, the script checks if your number is less than OR greater than 67 by using the -o operator.
# This can be a way to check if your number is NOT equal to 67, 
# because if it's less than or greater than 67, then it's not equal to 67.

# File Operators for file comparison
# These operators are used to compare files and check their properties.

# Bash Operators                            Meaning
# -e                                    Check if the file or directory exists
# -f                                    Check if the file exists and is a regular file (not a directory)
# -d                                    Check if the path refers to a directory
# -r                                    Check if the file is readable
# -w                                    Check if the file is writable
# -x                                    Check if the file is executable
# -s                                    Check if the file exists and has size greater than zero
# -nt                                   Check whether file1 is newer than file2
# -ot                                   Check whether file1 is older than file2
# !                                     Negates the condition (logical NOT)

# Example 8):
if [ -d "$HOME/Downloads" ]; then
    echo "The Downloads folder exists!"
else
    echo "The Downloads folder does not exist!"
fi
# Example Output:
# The Downloads folder exists!
# The script checks if the Downloads folder exists in your home directory by using the -d operator.

# Example 9): (create two files and check which one is newer in a temporary directory)
mkdir temp
cd temp
touch file1.txt
sleep 2
touch file2.txt
if [ file1.txt -nt file2.txt ]; then
    echo "file1.txt is newer than file2.txt!"
elif [ file1.txt -ot file2.txt ]; then
    echo "file1.txt is older than file2.txt!"
else
    echo "file1.txt and file2.txt have the same modification time!"
fi
cd ..
rm -r temp
# Output:
# file1.txt is older than file2.txt!
# The script creates two files, file1.txt and file2.txt, with a 2-second delay between their creation
# so that one is clearly newer than the other.
# It then checks if file1.txt is newer than file2.txt using the -nt operator,
# and if file1.txt is older than file2.txt using the -ot operator.
# I don't want to clog up your computer with random files, so we delete them after the example. *Your welcome*


