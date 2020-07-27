-- Initialize the currency amount
total = 689 

-- Get the integer part of the division and the remainder
number_of_100 = total // 100
remainder_100 = total % 100

number_of_50 = remainder_100 // 50
remainder_50 = remainder_100 % 50

number_of_20 = remainder_50 // 20
remainder_20 = remainder_50 % 20

number_of_10 = remainder_20 // 10
remainder_10 = remainder_20 % 10

number_of_5 = remainder_10 // 5
remainder_5 = remainder_10 % 5

number_of_1 = remainder_5

-- Display the number of notes for 100, 50, 20, 10, 5, and 1
print("Total of 100 notes: "..number_of_100)
print("Total of  50 notes: "..number_of_50)
print("Total of  20 notes: "..number_of_20)
print("Total of  10 notes: "..number_of_10)
print("Total of   5 notes: "..number_of_5)
print("Total of   1 notes: "..number_of_1)
