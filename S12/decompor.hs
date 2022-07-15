import Data.List (unfoldr)
decompor x 
    | x < 10 = [x]
    | otherwise = decompor (div x 10) ++ [mod x 10]


decomporU x = reverse $ unfoldr fn x
            where fn x = if x == 0
                            then Nothing 
                            else Just (mod x 10, div x 10)