deletee n [] = []
deletee n (x:xs)
    | x == n = xs
    | otherwise = x: (deletee n xs)