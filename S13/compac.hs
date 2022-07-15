compac [] = []
compac (x:xs) = fn x xs 1
        where
            fn x [] 1 = [[x]]
            fn x [] rep = [[x, rep]]
            fn x (y:ys) rep
                | x == y = fn x ys (rep + 1)
                | rep > 1 = [[x, rep]] ++ fn y ys 1
                | otherwise = [[x]] ++ fn  y ys 1
