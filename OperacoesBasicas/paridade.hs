count [] = 0
count (x:xs) = if x == True
                then 1 + count xs
                else 0 + count xs

paridade list = if (mod(count list) 2) /= 0
                    then True 
                    else False        