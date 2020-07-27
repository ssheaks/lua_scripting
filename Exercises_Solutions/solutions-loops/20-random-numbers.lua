-- Initialize the random seed with a value based on the current system time
math.randomseed(os.time())

-- Loops 20 times displaying random numbers from 1 to 6
for i = 1, 20 do
  dice_roll = math.random(1, 6)
  print(dice_roll)
end
