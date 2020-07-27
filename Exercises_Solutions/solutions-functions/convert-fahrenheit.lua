-- Function that receives a temperature in Celsius and convert to Fahrenheit
function celsius_to_fahrenheit(temp_c)
  return (9 / 5) * temp_c + 32
end

-- Call the function with some values to test if the results are correct
print("32 converted to Fahrenheit is "..celsius_to_fahrenheit(32))
print("-4 converted to Fahrenheit is "..celsius_to_fahrenheit(-4))
print("25 converted to Fahrenheit is "..celsius_to_fahrenheit(25))
