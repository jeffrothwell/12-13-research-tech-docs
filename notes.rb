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

# Array class:
# 1. first:  can have no arguments in which case it returns the first
#   object in the array, whatever data type it may be.  with an integer
#   as an argument, returns an array with the first (integer) elements
#   of the array it's called on.
#
#       example:

my_array = ["David", "Bowie", "Mars", "Spiders"]
p my_array.first   # => "David"
p my_array.first(2)  # =>  ["David", "Bowie"]

# 2. delete_at:  requires an integer as an argument, deletes the array
#               element at that index number, returns the value stored
#               at that index number.  The original array is modified to
#               have that value removed, but note this is not actually the
#               return value.  will also return nil if the argument integer
# =>            is out of the range of the size of the array
#
#       example

p my_array.delete_at(1)  # => "Bowie"
p my_array                #array is now missing "Bowie", index numbers for
                          #later elements would decrease by one

# =>    OK, at this point, it's sunday night, I left this assignment to last
# because I generally found through the week my ability to make sense
# of the docs and also know what I'm looking for from both the docs
# and stack overflow improved the more I used both sources.  Other than
# some of the more out there examples and options in the docs, I feel
# pretty good about reading them, seeing the examples and making sense of it
# as well as the importance of what the return value is.
#
# I went through all the other methods in the assignment and made sure I
# understood them, I'm just not writing it all out here.  Still need to
# take a stab at the second roll the dice assignment!
