# Exercise 4: functions and conditionals

# Define a function `is_twice_as_long` that takes in two character strings, and 
# returns whether or not (e.g., a boolean) the length of one argument is greater
# than or equal to twice the length of the other.
# Hint: compare the length difference to the length of the smaller string
is_twice_as_long <- function(input1, input2) {
	return(abs(input1 - input2) >= min(input1, input2))
}

# Call your `is_twice_as_long` function by passing it different length strings
# to confirm that it works. Make sure to check when _either_ argument is twice
# as long, as well as when neither are!
print(is_twice_as_long("apple", "orange"))
print(is_twice_as_long("apple", "aappppllee"))
print(is_twice_as_long("apple", "iwanttoeatapple"))


# Define a function `describe_difference` that takes in two strings. The
# function should return one of the following sentences as appropriate
#   "Your first string is longer by N characters"
#   "Your second string is longer by N characters"
#   "Your strings are the same length!"
describe_difference <- function(input1, input2) {
	if (nchar(input1) > nchar(input2)) {
		return(paste("Your first string is longer by ", nchar(input1) - 
					nchar(input2), "characters"))
	} else if (nchar(input1) < nchar(input2)) {
		return(paste("Your second string is longer by ", nchar(input2) - 
					nchar(input1), "characters"))
	} else {
		return "Your strings are the same length"
	}
}

# Call your `describe_difference` function by passing it different length strings
# to confirm that it works. Make sure to check all 3 conditions1
describe_difference("apple", "orange")
describe_difference("computer", "phone")
describe_difference("apple", "juice")