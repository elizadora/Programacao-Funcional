quadperf n = testarQua 1 n
    where testarQua i n
            | i * i == n = True 
            | i * i > n = False 
            | otherwise = testarQua (i + 1) n