reduce (a, b) = foldl redux (a, b) $ reverse [2..b]
    where redux (a, b) x
            | mod a x == 0 && mod b x == 0 = (div a x, div b x)
            | otherwise = (a, b)