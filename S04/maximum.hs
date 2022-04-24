maior [x] = x
maior (x:xs)
    | maiorX > x = maiorX
    | otherwise = x
    where maiorX = maior xs
