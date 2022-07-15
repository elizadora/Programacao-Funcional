expoentes a b = length $ takeWhile (\(a,b) -> a /= 0 && b == 0) $ iterate fun (a, mod a b)
    where fun (x, y) = (div x b, mod (div x b) b) 
