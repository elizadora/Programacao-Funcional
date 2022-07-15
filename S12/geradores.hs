import Data.List (unfoldr)
-- gerador 1
gerador1 x = [x] ++ gerador1 (if x > 0 then -x else -(x-1))

-- gerador 2
gerador2 x = concat [[x, -(x+1)] | x <- [1, 3..]]

-- gerador3
gerador3 x = reverse $ unfoldr fn x
    where fn x = if x < 0
                    then Nothing
                    else Just (2^x, x-1)

-- gerador 4
gerador4 x = takeWhile (>=1) $ iterate (`div` 2) x