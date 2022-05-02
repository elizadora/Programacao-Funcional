triangle 0 = []
triangle n = triangle (n-1) ++ [line n] 
    where 
        line 0 = []
        line n = [inicio..inicio+n-1]
        inicio = sum [1..n-1] + 1 