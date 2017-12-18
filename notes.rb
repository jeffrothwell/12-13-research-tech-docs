# Notes and examples from the ruby docs:

# String class
# 1. length:  no arguments, is called upon the string itself
#  - simply returns an integer equal to the number of characters
#    in the string.  Return type is ineger.
#
#    Example:

my_str = "jdikfbawogifkeg"  #random string, has 15 letters
puts my_str.length  #display the return value 15, an integer

# 2. strip: no arguments, simply removes leading and trailing white space
#           from the string it is called on, returns this "stripped" String
#           which does not alter the original string it was called on
#           whitespace includes newline, null, tabs, carriage return, space
#
#     Example:

my_str = "   \n stripped string  \r\n   "  #spaces, newlines, etc
p my_str.strip          # => "stripped string"

# 3. split: divides any string into an array delimited by spaces when no
#           argument is passed.  Can pass up to two arguments, first, a
#           delimiter can be specified, only some of this I understand at
#           this point but the obvious example is a string like "\n" which
#           would split the string by newlines instead of the default spaces.
#           The next argument, if specified is an integer, which, if positive,
#           specifies the maximum number of splits in the string can be returned.
#
#     examples:

my_str = "Poke a double decker\nLlama taboot\nLlama taboot taboot"
p my_str.split        #default, split by spaces, \n treated as space
p my_str.split("\n")  #split by newlines
p my_str.split(" ", 8)  #split by spaces, max 8 elements in the return array

# 4. start_with?:  takes any prefix, or multiple prefixes, separated by comas
#                 as arguments and returns true if the string it's called on
#                 starts with any of the prefix(es) in the arguments.  Returns
#                 false if not.
#
#         example:

my_str = "Little Jimmy's off to camp"
p my_str.start_with?("Litt")   #returns true in this case
p my_str.start_with?("sqirming") #returns false in this case
