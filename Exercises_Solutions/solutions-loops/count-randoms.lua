-- Initialize the random seed with a value based on the current system time
math.randomseed(os.time())

-- Declare a table to save the number of picks for 1, 2, 3, 4, 5, and 6.
count_table = {
  [1] = 0, 
  [2] = 0, 
  [3] = 0,
  [4] = 0,
  [5] = 0,
  [6] = 0
}

for i = 1, 100 do
  dice_roll = math.random(1, 6)
  -- increment the table value at position
  count_table[dice_roll] = count_table[dice_roll] + 1
end

-- Display the total amount picked for each number
for i = 1, 6 do
  print("Number of "..i.." results: "..count_table[i])
end
