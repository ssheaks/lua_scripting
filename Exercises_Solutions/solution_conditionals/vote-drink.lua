-- Initialize a variable with the user age
user_age = 17 

if user_age < 16 then
  print("You cannot vote or drink in Brazil.")
elseif user_age >= 16 and user_age < 18 then
  print("You can legally vote but not drink.")
elseif user_age >= 18 then
  print("Yay! You can drink cachaça and vote... in that order.")
end
