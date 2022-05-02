intercal [] ys = ys
intercal xs [] = xs
intercal (x:xs) (y:ys) = x: y: intercal xs ys 