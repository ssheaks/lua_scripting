-- Initialize the random number generator with a seed based on the current time
math.randomseed(os.time())

-- Pick three random values from 0 to 255 for (R)ed, (G)reen, and (B)lue
r = math.random(0, 255)
g = math.random(0, 255)
b = math.random(0, 255)

-- Display the color values
print("R:"..r..", G:"..g..", B:"..b)
