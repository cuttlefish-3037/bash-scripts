#!/bin/bash
# Generate ten random passwords

# this script expects an int as argument

# tr reads random characters from /dev/urandom
# it deletes (d) everything in the complement (c) of the set of
# alphanumeric characters; this leaves only alphanumeric characters

# fold folds lines to a width (w) of $1 which is the argument to this
# script

# head displays the first 10 lines. This is already the default
# behaviour of head. Option -n10 is unnecessary

# use diceware (http://world.std.com/~reinhold/diceware.html) if you
# want secure and easy to remember passwords

tr -cd [:alnum:] < /dev/urandom | fold -w $1 | head
