-- Initial amount in Euros
A = 1000

-- Percentual of interest rate
p = 5

-- The amount of years
n = 3

-- Calculate the amount of money made
total = A * ((1 + p / 100) ^ n)

-- Display the result
print("Total: "..total)
