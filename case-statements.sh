#!/bin/bash

# ---------------------------------------------------------------------------------------------------------------------

# Bash Case Statements

# What are Case Statements?
# Case statements in bash are a way to match one value against a list of patterns and run code based on the first match.
# They can be compared to be a more powerful version of if-else statements, especially when you have multiple conditions to check.

# Why use Case Statements?
# Case statements are useful for handling multiple conditions in a cleaner and more readable way than if-else statements.
# They allow you to match patterns using asterisks and can be more efficient when you have many conditions to check.

# How do Case Statements work?
# Here is the basic syntax of a case statement in bash:

# case variable in
#     pattern1)
#         # code to execute if variable matches pattern1
#         ;;
#     pattern2)
#         # code to execute if variable matches pattern2
#         ;;
#     *)
#         # code to execute if variable does not match any pattern
#         ;;
# esac

# Example 1):
read -p "Enter a Pokemon: " pokemon
case $pokemon in
    "Pikachu")
        echo "Pikachu, the Mouse Pokémon."
        ;;
    "Charmander")
        echo "Charmander, the Lizard Pokémon."
        ;;
    "Squirtle")
        echo "Squirtle, the Tiny Turtle Pokémon."
        ;;
    "Bulbasaur")
        echo "Bulbasaur, the Seed Pokémon."
        ;;
    *)
        echo "Either yuno ball or that isn't a Pokemon!"
        ;;
esac
# The user's input is stored in the variable `pokemon` and it is compared against the patterns "Pikachu", "Charmander", "Squirtle", and "Bulbasaur".
# If any of it matches, the corresponding code block is executed. 
# If none of the patterns match, the code block under `*` is executed, which serves as a default case.

