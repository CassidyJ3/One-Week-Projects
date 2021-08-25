#!/usr/bin/python
# Program2.py
# Author: Joe Cassidy
# Purpose: To find the average of a given list of numbers
# Date: 23 January, 2019
# Class: CSCI 431

# main() gets a list of numbers from the user, keeps track of its length, and
# then passes these to the averageList() function
# variables: list- the list, i- the current length of the list
def main():
    # declaration of list and i
    list = []
    i = 0
    # declaration of input which is used in the loop conditional
    input = 0
    # gets input from the user until they input 'stop'
    while input != "stop":
        input = raw_input("Enter the list's next number or end the list by entering 'stop': ")
        # if input is a number, add it to the list
        try:
            list.append(float(input))
            i += 1

        # otherwise, handle the issue
        except ValueError:
            # if the stop command was not received, let the user know they have
            # given invalid input and continue the loop
            if input != "stop":
                print "Input is not a number or the stop command, please try again."

            # if "stop" command was received, return to start of loop unless list
            # is length 0, in which case let user know that their list must have
            # at least one element and change input to "Exception" so loop
            # continues
            else:
                if i == 0:
                    print "List must contain at least one element."
                    input = "Exception"

    # print the list the program received to make it easier to identify that the
    # list was input correctly
    print "Your list was: "
    for x in list[:-1]:
        print x,
        print ", ",
    print list[i-1]
    # call averageList to get the average value of the numbers in the list
    print "The average of your list was: "
    print averageList(list,i)

# gives the average of a list given the list and its length
# variables: list- the list, length- the list's length
def averageList(list, length):
    return sum(list)/length

# call the main function to start the program
if __name__== "__main__":
    main()
