#!/bin/bash

# ---------------------------------------------------------------------------------------------------------------------

# Bash printf

# What is printf?
# The command `printf` is used to format output with more control than the options you get from the `echo` command
# Basically, it is a fancier and more nuanced version of `echo`
# The Bash `printf` command is modeled on the `printf` function from the C language for those who are familiar with C (not me)

# Why use printf?
# You may already be familiar with the command `echo` and you may be wondering why `printf` even exists
# Another advantage of printf is its portability;
# printf stays the same across different shells (fsh, sh, bash)

# How does printf work?
# Literal text is printed as is
# Format specifiers start with '%'
# Syntax: printf "formatted-string" [arguements...]
# printf does not automatically newline; use \n to newline

# Common Format Specifiers:
# %s - strings
# %d - integer
# %f - floating-point
# %x - hexadecimal (lowercase)
# %o - octal
# %c - single character (uses ASCII value)

# Example 1): 
printf "Greetings, neighbor! The name's %s. But you can just call me %s.\n" "Crazy Dave" "Crazy Dave"
# Output: Greetings, neighbor! The name's Crazy Dave. But you can just call me Crazy Dave.
# The arguments "Crazy Dave" and "Crazy Dave" are substituted into the format string 
# where the %s specifiers are located, in order

# Example 2):
number=67
printf "The number is %d.\n" "$number"
# Output: The number is 67.

# Example 3):
printf "%.4f\n" 3.133734
# Output: 3.1337
# I rounded the number to four decimal points

# Example 4):
printf "%x\n" 61669
# Output: f0e5
# the %o works in a similar fashion
printf "%o\n" 266305
# Output: 1010101

# Example 5):
printf "What is that%c\n" $'\x3F'
# %c only prints one character from ASCII code or the first character in a string
# the $'...' tells Bash to interpret "escape sequences" (when you see '\') inside the quotes
# \x means hex 3F which is decimal 63 which corresponds to the ASCII character '?'
# Output: What is that?

# If there are more arguemens than specifiers, `printf` reuses the format string
# Example 6):
printf "Hi %s, this isn't a automated message.\n" "Peashooter" "Sunflower" "Wall-nut"
# Output:
# Hi Peashooter, this isn't a automated message.
# Hi Sunflower, this isn't a automated message.
# Hi Wall-nut, this isn't a automated message.

# Common Escape Sequences:
# \n - newline
# \t - tab
# \\ - backslash
# \" - double quote
# \' - single quote
# \a - alert (bell)

# Example 7):
printf "This is a tab:\tbut not the kind you find you have to pay for in a bar.\n"
# Output: This is a tab:	but not the kind you find you have to pay for in a bar.

# What not to do
# Always remember your quotes (" ")
# Don't mix up format specifiers and arguements
# Remember that printf does'nt automatically newline

# Examples of what to avoid:
