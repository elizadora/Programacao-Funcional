swap' xs pos1 pos2 = sideL ++ [elementR] ++ middle ++ [elementL] ++ sideR
    where
        elementL = xs !! pos1
        elementR = xs !! pos2
        sideL = take pos1 xs
        sideR = drop (pos2 + 1) xs
        middle = take (pos2 - pos1 - 1) $ drop (pos1 + 1) xs 


swap xs pos1 pos2 = if (pos1 <= length xs) && (pos2 <= length xs)
                        then swap' xs pos1 pos2
                        else xs