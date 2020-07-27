-- Initialize a variable with a password value
password = "Pikum@IsC00L"

-- Check if the password has no spaces and has at least 6 characters
if not string.find(password, " ") and #password >= 6 then
  print("Valid password.")
else
  print("Invalid password.")
end
