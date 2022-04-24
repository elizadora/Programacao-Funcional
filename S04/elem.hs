pertence num [] = False 
pertence num (x:xs) 
    | num == x = True
    | otherwise = pertence num xs