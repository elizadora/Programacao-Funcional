mynub [] = []
mynub [x] = [x]
mynub (x:xs) = x : mynub (filter (/=x) xs) 